resource "aws_route_table" "DemoPublicRoute" {
  vpc_id = aws_vpc.DemoVPC.id
  tags = {
    "Name" = var.Public_RTB_Name
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.DemoIGW.id
  }
}

resource "aws_route_table_association" "DemoPblicSubnetAssociate1" {
  route_table_id = aws_route_table.DemoPublicRoute.id
  subnet_id      = aws_subnet.DemoSubnet-1.id
}

resource "aws_route_table_association" "DemoPblicSubnetAssociate2" {
  route_table_id = aws_route_table.DemoPublicRoute.id
  subnet_id      = aws_subnet.DemoSubnet-2.id
}