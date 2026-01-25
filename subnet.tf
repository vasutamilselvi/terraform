resource "aws_subnet" "terra_public_subnet_1" {
  vpc_id            = aws_vpc.terra_vpc.id
  cidr_block        = var.public_subnet_1_cidr
  availability_zone = var.public_subnet_1_az
  tags = {
    Name = "${var.vpc_name}_terra_public_subnet_1"
  }
}

resource "aws_subnet" "terra_public_subnet_2" {
  vpc_id            = aws_vpc.terra_vpc.id
  cidr_block        = var.public_subnet_2_cidr
  availability_zone = var.public_subnet_2_az
  tags = {
    Name = "${var.vpc_name}_terra_public_subnet_2"
  }
}

resource "aws_subnet" "terra_private_subnet_1" {
  vpc_id            = aws_vpc.terra_vpc.id
  cidr_block        = var.private_subnet_1_cidr
  availability_zone = var.private_subnet_1_az
  tags = {
    Name = "${var.vpc_name}_terra_private_subnet_1"
  }
}