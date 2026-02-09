resource "aws_vpc" "DemoVPC" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags = {
    "Name" = var.vpc_name
  }
}

resource "aws_internet_gateway" "DemoIGW" {
  vpc_id = aws_vpc.DemoVPC.id
  tags = {
    "Name" = var.IGW_Name
  }
}