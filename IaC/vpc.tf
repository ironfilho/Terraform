resource "aws_vpc" "VPC_wordpress" {
  cidr_block           = "10.0.0.0/16"
    enable_dns_support   = true 
  tags = {
    Name = "VPC wordpress"
}
}

resource "aws_subnet" "Public_subnet_0" {
  vpc_id                  = aws_vpc.VPC_wordpress.id
  cidr_block              = "10.0.200.0/24"   
  availability_zone       = "us-west-2" 
tags = {
   Name = "Public subnet 0"
}
}

resource "aws_subnet" "Public_subnet_1" {
  vpc_id                  = aws_vpc.VPC_wordpress.id
  cidr_block              = "10.0.201.0/24"
  availability_zone       = "us-west-2" 
tags = {
   Name = "Public subnet 1"
}
}

resource "aws_subnet" "Web_subnet_0" {
  vpc_id                  = aws_vpc.VPC_wordpress.id
  cidr_block              = "10.0.0.0/22" 
  availability_zone       = "us-west-2" 
tags = {
   Name = "Web subnet 0"
}
}

resource "aws_subnet" "Web_subnet_1" {
  vpc_id                  = aws_vpc.VPC_wordpress.id
  cidr_block              = "10.0.4.0/22" 
  availability_zone       = "us-west-2" 
tags = {
   Name = "Web subnet 1"
}
}

resource "aws_subnet" "Data_subnet_0" {
  vpc_id                  = aws_vpc.VPC_wordpress.id
  cidr_block              = "10.0.100.0/24" 
  availability_zone       = "us-west-2" 
tags = {
   Name = "Data subnet 0"
}
}

resource "aws_subnet" "Data_subnet_1" {
  vpc_id                  = aws_vpc.VPC_wordpress.id
  cidr_block              = "10.0.101.0/24" 
  availability_zone       = "us-west-2" 
tags = {
   Name = "Data subnet 1"
}
}

resource "aws_subnet" "Data_subnet_1" {
  vpc_id                  = aws_vpc.VPC_wordpress.id
  cidr_block              = "10.0.101.0/22" 
  availability_zone       = "us-west-2" 
tags = {
   Name = "Data subnet 1"
}
}