resource "aws_vpc" "terra_vpc" {
  region               = "us-east-1"
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "terra_vpc"
  }
  
  }

resource "aws_internet_gateway" "terra_internet_gateway" {
  vpc_id = aws_vpc.terra_vpc.id

  tags = {
    Name = "terra_internet_gateway"
  }
}