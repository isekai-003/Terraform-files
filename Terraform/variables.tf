variable "region" {
  description = "The AWS region to deploy in"
  type        = string
  default     = "ap-south-1"
}

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 3
}

variable "instance_types" {
  description = "List of instance types to use for the instances"
  type        = list(string)
  default     = ["t2.medium", "t2.medium","t2.large"]
}
variable "instance_names" {
  description = "List of names to use for the instances"
  type        = list(string)
  default     = ["Ansible", "Jenkins-master", "Jenkins-worker"]
}

variable "ami_id" {
  description = "The AMI ID to use for the instances"
  type        = string
  default     = "ami-066bc6a848a52c1e4"
}
