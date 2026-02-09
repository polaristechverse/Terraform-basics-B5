resource "aws_subnet" "DemoSubnet-1" {
  vpc_id                  = aws_vpc.DemoVPC.id
  cidr_block              = var.Subnet_1_Cidr
  availability_zone       = var.az1
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.subnet_name_1
  }
}

resource "aws_subnet" "DemoSubnet-2" {
  vpc_id                  = aws_vpc.DemoVPC.id
  cidr_block              = var.Subnet_2_Cidr
  availability_zone       = var.az2
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.subnet_name_2
  }
}

resource "aws_subnet" "DemoSubnet-3" {
  vpc_id                  = aws_vpc.DemoVPC.id
  cidr_block              = var.Subnet_3_Cidr
  availability_zone       = var.az3
  map_public_ip_on_launch = true
  tags = {
    "Name" = var.subnet_name_3
  }
}