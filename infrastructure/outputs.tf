output "aws_identity_arn" {
  description = "AWS identity Terraform is using"
  value       = data.aws_caller_identity.current.arn
}

output "available_availability_zones" {
  description = "Availability zones in the configured AWS region"
  value       = data.aws_availability_zones.available.names
}
output "vpc_id" {
  description = "ID of the Terraform managed VPC"
  value       = aws_vpc.main.id
}
output "public_subnet_id" {
  description = "ID of the public subnet"
  value       = aws_subnet.public.id
}

output "internet_gateway_id" {
  description = "ID of the VPC internet gateway"
  value       = aws_internet_gateway.main.id
}

output "public_route_table_id" {
  description = "ID of the public route table"
  value       = aws_route_table.public.id
}
output "web_server_public_ip" {
  description = "Public IPv4 address of the EC2 web server"
  value       = aws_instance.web.public_ip
}

output "web_server_url" {
  description = "URL of the Terraform web server"
  value       = "http://${aws_instance.web.public_ip}"
}

output "web_security_group_id" {
  description = "ID of the web server security group"
  value       = aws_security_group.web.id
}