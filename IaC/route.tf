resource "aws_route_table" "Public_wordpress" {
 vpc_id = aws_vpc.VPC_wordpress.id
 tags = {
        Name = "Public Route table"
}
}

resource "aws_route" "internet_access" {
  route_table_id         = aws_route_table.Public_wordpress.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.IGW_wordpress.id
}

resource "aws_route_table_association" "Public_association_0" {
  subnet_id      = aws_subnet.Public_subnet_0.id
  route_table_id = aws_route_table.Public_wordpress.id
}

resource "aws_route_table_association" "Public_association_1" {
  subnet_id      = aws_subnet.Public_subnet_1.id
  route_table_id = aws_route_table.Public_wordpress.id
}