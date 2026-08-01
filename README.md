\# Terraform AWS Infrastructure Lab



This project demonstrates how Terraform can be used to provision and manage AWS infrastructure through infrastructure as code.



The project creates a complete public web server environment in AWS and stores Terraform state remotely in a secure S3 bucket.



\## Architecture



The infrastructure includes:



AWS VPC



Public subnet



Internet gateway



Public route table



Route table association



Security group allowing HTTP traffic



Amazon Linux EC2 instance



Nginx web server installed through EC2 user data



Private S3 bucket for Terraform remote state



S3 state locking and versioning



\## Architecture Flow



Internet traffic reaches the EC2 web server through the following path:



Internet



Internet Gateway



Public Route Table



Public Subnet



Security Group



EC2 Instance



Nginx Web Server



\## Repository Structure



```text

terraform-aws-infrastructure-lab

│

├── bootstrap

│   ├── main.tf

│   ├── outputs.tf

│   ├── providers.tf

│   └── .terraform.lock.hcl

│

├── infrastructure

│   ├── main.tf

│   ├── outputs.tf

│   ├── providers.tf

│   ├── variables.tf

│   ├── user-data.sh

│   └── .terraform.lock.hcl

│

├── .gitignore

└── README.md

