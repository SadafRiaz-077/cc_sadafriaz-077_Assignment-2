variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.10.0/24"
}

variable "availability_zone" {
  description = "AWS availability zone"
  type        = string
  default     = "me-central-1a"
}

variable "env_prefix" {
  description = "Environment prefix"
  type        = string
  default     = "prod"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "public_key" {
  description = "Path to SSH public key"
  type        = string
  default     = "~/.ssh/id_ed25519.pub"
}

variable "private_key" {
  description = "Path to SSH private key"
  type        = string
  default     = "~/.ssh/id_ed25519"
}

