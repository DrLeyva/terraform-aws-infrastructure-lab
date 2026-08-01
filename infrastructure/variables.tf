variable "aws_region" {
  description = "AWS region used for the lab"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Name used when labeling project resources"
  type        = string
  default     = "aaron-terraform"
}

variable "environment" {
  description = "Deployment environment"
  type        = string
  default     = "lab"
}

variable "vpc_cidr" {
  description = "CIDR range assigned to the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR range assigned to the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "instance_type" {
  description = "EC2 instance type used by the web server"
  type        = string
  default     = "t3.micro"
}