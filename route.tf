resource "aws_route_table" "terra_route_table" {
  vpc_id = aws_vpc.terra_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.terra_internet_gateway.id
  }

  tags = {
    Name = "terra_route_table"
  }
}

resource "aws_route_table_association" "terra_route_table_association" {
  subnet_id      = aws_subnet.terra_public_subnet.id
  route_table_id = aws_route_table.terra_route_table.id
}