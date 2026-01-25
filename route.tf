resource "aws_route_table" "terra_public_route_table" {
  vpc_id = aws_vpc.terra_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terra_internet_gateway.id
  }

  tags = {
    Name = "terra_public_route_table"
  }
}

resource "aws_route_table" "terra_private_route_table" {
  vpc_id = aws_vpc.terra_vpc.id

  route {
    cidr_block = var.private_subnet_1_cidr
    gateway_id = aws_nat_gateway.terra_nat_gateway.id
  }

  tags = {
    Name = "terra_private_route_table"
  }
}

resource "aws_route_table_association" "terra_route_table_association_1" {
  subnet_id      = aws_subnet.terra_public_subnet_1.id
  route_table_id = aws_route_table.terra_public_route_table.id
}

resource "aws_route_table_association" "terra_route_table_association_2" {
  subnet_id      = aws_subnet.terra_public_subnet_2.id
  route_table_id = aws_route_table.terra_public_route_table.id
}

resource "aws_route_table_association" "terra_route_table_association_3" {
  subnet_id      = aws_subnet.terra_private_subnet_1.id
  route_table_id = aws_route_table.terra_private_route_table.id
}