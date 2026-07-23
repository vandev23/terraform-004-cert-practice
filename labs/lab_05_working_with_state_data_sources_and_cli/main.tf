data "aws_availability_zones" "available" {
  state = "available"

}

data "aws_region" "current" {
}

data "aws_caller_identity" "current" {
}

resource "aws_vpc" "development" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name        = "terraform-practice-vpc"
    Environment = "development"
    Region      = data.aws_region.current.region
    Account     = data.aws_caller_identity.current.account_id
    CreatedBy   = "${data.aws_caller_identity.current.account_id}-${data.aws_region.current.region}"
  }
}

resource "aws_subnet" "development_public" {
  vpc_id                  = aws_vpc.development.id
  cidr_block              = var.subnet_cidr
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name        = "terraform-practice-public-subnet"
    Environment = "development"
    AZInfo      = "${data.aws_region.current.region}-${data.aws_availability_zones.available.names[0]}"
  }
}