 variable "vpc_id" {
  description = "ID of the VPC"
  type        = string
}

variable "env_prefix" {
  description = "Environment prefix for naming resources"
  type        = string
}

variable "my_ip" {
  description = "Your public IP address with /32"
  type        = string
}

