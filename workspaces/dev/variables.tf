variable "aws_region" {
  type    = string
  default = "ap-south-1"
}

variable "vpc_id" {
  type = string
}

variable "subnet_id" {
  type = string
}

variable "ami_id" {
  description = "AMI ID for ec2_dev (first instance)"
  type        = string
}

variable "ami_id_2" {
  description = "AMI ID for ec2_dev_2 (second instance)"
  type        = string
}