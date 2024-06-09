# Variables
# variable "aws_access_key" {
#   type = string
# }

# variable "aws_secret_key" {
#   type = string
# }
packer {
  required_plugins {
    amazon = {
      version = ">= 0.0.2"
      source  = "github.com/hashicorp/amazon"
    }
  }
}
locals {
  timestamp = regex_replace(timestamp(), "[- TZ:]", "")
}

# Sources (Builders)
source "amazon-ebs" "myami" {
  # access_key = var.aws_access_key
  # secret_key = var.aws_secret_key
  region     = "ap-south-1"
  source_ami = "ami-0f58b397bc5c1f2e8"
  instance_type = "t2.micro"
  ssh_username = "ubuntu"
  ami_name = "packer-demo-ami-${local.timestamp}"
}

# Builds
build {
  sources = [
    "source.amazon-ebs.myami",
  ]

}
