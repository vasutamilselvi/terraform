resource "aws_subnet" "terra_public_subnet" {
  vpc_id            = aws_vpc.terra_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "terra_public_subnet"
  }
}