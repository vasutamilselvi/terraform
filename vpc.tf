resource "aws_vpc" "terra_vpc" {
  region               = "us-east-1"
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    Name = "${var.vpc_name}"
  }
}

resource "aws_internet_gateway" "terra_internet_gateway" {
  vpc_id = aws_vpc.terra_vpc.id
  tags = {
    Name = "terra_internet_gateway"
  }
}

resource "aws_nat_gateway" "terra_nat_gateway" {
  subnet_id = aws_subnet.terra_public_subnet_1.id
  allocation_id = aws_eip.terra_nat_eip.id
  tags = {
    Name = "terra_nat_gateway"
  }
}

resource "aws_eip" "terra_nat_eip" {
  depends_on = [aws_internet_gateway.terra_internet_gateway]
}

resource "aws_instance" "terra_web_server" {
  ami           = "ami-0532be01f26a3de55"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.terra_public_subnet_1.id
  vpc_security_group_ids = [aws_security_group.terra_allow_tls.id]
  associate_public_ip_address = true
  key_name = "key-new"
  tags = {
    Name = "terra_web_server"
  }
}

resource "aws_instance" "terra_private_instance" {
  ami           = "ami-0532be01f26a3de55"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.terra_private_subnet_1.id
  vpc_security_group_ids = [aws_security_group.terra_allow_tls.id]
  key_name = "key-new"
  tags = {
    Name = "terra_private_instance"
  }
}