output "account_id" {
  description = "The AWS account ID"
  value       = data.aws_caller_identity.current.account_id
  sensitive   = true
}

output "region" {
  description = "The AWS region"
  value       = data.aws_region.current.region
}

output "availability_zones" {
  description = "The available availability zones in the current region"
  value       = data.aws_availability_zones.available.names
}

output "vpc_id" {
  description = "ID of the created VPC"
  value       = aws_vpc.development.id
}

output "combined_info" {
  description = "Combined information about the VPC, region, and account"
  value       = "${data.aws_caller_identity.current.account_id}-${data.aws_region.current.region}"
  sensitive   = true
}