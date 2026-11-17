variable "vpc_id" {
  description = "VPC ID where the security group is created"
  type        = string
}

variable "sg_name" {
  description = "Security group name"
  type        = string
}

variable "ssh_cidr" {
  description = "Trusted IPv4 CIDR allowed to connect over SSH"
  type        = string
}
