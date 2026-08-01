terraform {
  required_version = ">= 1.15.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }

  backend "s3" {
    bucket       = "aaron-terraform-state-q0rn3l3ctr1cx9lx"
    key          = "infrastructure/terraform.tfstate"
    region       = "us-east-1"
    profile      = "terraform-lab"
    encrypt      = true
    use_lockfile = true
  }
}

provider "aws" {
  region  = var.aws_region
  profile = "terraform-lab"
}