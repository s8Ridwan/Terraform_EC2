# Provider Configuration
provider "aws" {
  region = "us-east-1"
}

# Variable Definitions
variable "ami" {
  type        = string
  description = "AMI ID for the instance"
  default     = "ami-0b0dcb5067f052a63"
}

variable "key" {
  type        = string
  description = "SSH key pair for the instance"
  default     = "key1"
}

variable "instance_type" {
  type        = string
  description = "Instance type to use"
  default     = "t2.nano"
}

variable "env" {
  type        = string
  description = "Environment variable"
  default     = "dev"
}

# AWS Instance Resource
resource "aws_instance" "web" {
  ami           = var.ami
  key_name      = var.key
  instance_type = var.instance_type

  tags = {
    Name = "moduleless_ec2"
    team = "DevOps"
    env  = var.env
  }
}

# Output values
output "public_ip" {
  value = aws_instance.web.public_ip
}

output "availability_zone" {
  value = aws_instance.web.availability_zone
}

output "security_groups" {
  value = aws_instance.web.security_groups
}
