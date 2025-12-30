variable "env_prefix" {
  description = "Environment prefix"
  type        = string
}

variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
}

variable "availability_zone" {
  description = "Availability Zone for the instance"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID where instance will be launched"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the instance"
  type        = string
}

variable "security_group_id" {
  description = "Security Group ID for the instance"
  type        = string
}

variable "public_key" {
  description = "Public key for SSH access"
  type        = string
}

variable "script_path" {
  description = "Path to the user-data script"
  type        = string
}

variable "instance_suffix" {
  description = "Suffix to make key pair unique"
  type        = string
}

variable "common_tags" {
  description = "Common tags to apply to resources"
  type        = map(string)
}

