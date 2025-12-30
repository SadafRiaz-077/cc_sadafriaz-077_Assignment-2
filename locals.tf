# Detect your current public IP dynamically
data "http" "my_ip" {
  url = "https://icanhazip.com"
}

locals {
  # Your public IP in /32 format for SSH rules
  my_ip = "${chomp(data.http.my_ip.response_body)}/32"

  # Common tags to attach to all resources
  common_tags = {
    Environment = var.env_prefix
    Project     = "Assignment-2"
    ManagedBy   = "Terraform"
  }

  # Backend server configuration list
  backend_servers = [
    {
      name        = "web-1"
      suffix      = "1"
      script_path = "./scripts/apache-setup.sh"
    },
    {
      name        = "web-2"
      suffix      = "2"
      script_path = "./scripts/apache-setup.sh"
    },
    {
      name        = "web-3"
      suffix      = "3"
      script_path = "./scripts/apache-setup.sh"
    }
  ]

  # Optional: resource naming convention
  resource_prefix = "${var.env_prefix}-assignment2"
}


