resource "aws_subnet" "terra_public_subnet_1" {
  vpc_id            = aws_vpc.terra_vpc.id
  cidr_block        = "10.0.10.0/24"
  availability_zone = "us-east-1a"
  tags = {
    Name = "terra_public_subnet_1"
  }
}

resource "aws_subnet" "terra_public_subnet_2" {
  vpc_id            = aws_vpc.terra_vpc.id
  cidr_block        = "10.0.20.0/24"
  availability_zone = "us-east-1b"
  tags = {
    Name = "terra_public_subnet_2"
  }
}