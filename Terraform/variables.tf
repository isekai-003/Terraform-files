variable "region" {
  description = "The AWS region to deploy in"
  type        = string
  default     = "ap-south-1"
}

variable "instance_count" {
  description = "Number of instances to create"
  type        = number
  default     = 2
}

variable "instance_types" {
  description = "List of instance types to use for the instances"
  type        = list(string)
  default     = ["t2.micro", "t2.small"]
}
variable "instance_names" {
  description = "List of names to use for the instances"
  type        = list(string)
  default     = ["instance-one", "instance-two", "instance-three"]
}

variable "ami_id" {
  description = "The AMI ID to use for the instances"
  type        = string
  default     = "ami-091596285adf7e43a"
}
