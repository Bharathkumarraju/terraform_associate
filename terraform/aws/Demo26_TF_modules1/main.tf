provider "aws" {
  region = "eu-west-2"
}

data "aws_availability_zones" "available" {}


terraform {
  backend "s3" {
    bucket = "bharathkumar-tf-remote-state"
    key = "dev/network/terraform.tfstate"
    region = "ap-southeast-1"
  }
}



resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = merge(var.tags,
  {
    Name = "${var.env}-vpc"
  })
}

resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id
  tags = merge(var.tags, {
    Name = "${var.env}-igw"
  })
}

resource "aws_subnet" "public_subnets" {
  count = length(var.public_subnet_cidrs)
  cidr_block = element(var.public_subnet_cidrs,count.index)
  vpc_id = aws_vpc.main.id
  availability_zone = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true
  tags = merge(var.tags, {
    Name = "${var.env}-public-subnet-${count.index + 1 }"
  })
}

resource "aws_route_table" "public_subnets" {
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.main.id
  }
  tags = merge(var.tags, {
    Name = "${var.env}-route-public-subnets"
  })
}

resource "aws_route_table_association" "public_routes" {
  count = length(aws_subnet.public_subnets[*].id)
  route_table_id = aws_route_table.public_subnets.id
#  subnet_id = element(aws_subnet.public_subnets[*].id, count.index )
  subnet_id = aws_subnet.public_subnets[count.index].id
}

resource "aws_eip" "nat" {
  count = length(var.private_subnet_cidrs)
  vpc = true
  tags = merge(var.tags, {
    Name = "${var.env}-nat-eip-${count.index + 1}"
  })
}

resource "aws_nat_gateway" "nat" {
  count = length(var.private_subnet_cidrs)
#  allocation_id = element(aws_eip.nat[*].id, count.index )
  allocation_id = aws_eip.nat[count.index].id
#  subnet_id = element(aws_subnet.public_subnets[*].id, count.index)
  subnet_id = aws_subnet.public_subnets[count.index].id
  tags = merge(var.tags, {
    Name = "${var.env}-nat-gw-${count.index + 1}"
  })
}

resource "aws_subnet" "private_subnets" {
  count = length(var.private_subnet_cidrs)
#  cidr_block = element(var.private_subnet_cidrs,count.index )
  cidr_block = var.private_subnet_cidrs[count.index]
  vpc_id = aws_vpc.main.id
  availability_zone = data.aws_availability_zones.available.names[count.index]
  tags = merge(var.tags,{
    Name = "${var.env}-private-subnet-${count.index + 1}"
  })
}

resource "aws_route_table" "private_subnets" {
  count = length(var.private_subnet_cidrs)
  vpc_id = aws_vpc.main.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat[count.index].id
  }
  tags = merge(var.tags, {
    Name = "${var.env}-route-private-subnet-${count.index + 1}"
  })
}

resource "aws_route_table_association" "private_routes" {
  count = length(aws_subnet.private_subnets[*].id)
  route_table_id = aws_route_table.private_subnets[count.index].id
  subnet_id = aws_subnet.private_subnets[count.index].id
}