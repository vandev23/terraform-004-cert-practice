output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.main.id
}

output "vpc_cidr" {
  description = "CIDR block of the created VPC"
  value       = aws_vpc.main.cidr_block
}

output "vpc_arn" {
  description = "ARN of the created VPC"
  value       = aws_vpc.main.arn
}

output "public_subnet_id" {
  description = "ID of the created public subnet"
  value       = aws_subnet.public.id
}

output "private_subnet_id" {
  description = "ID of the created private subnet"
  value       = aws_subnet.private.id
}

output "route_table_id" {
  description = "ID of the created route table"
  value       = aws_route_table.main.id
}

output "security_group_id" {
  description = "ID of the created security group"
  value       = aws_security_group.example.id
}