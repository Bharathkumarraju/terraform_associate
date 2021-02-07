#fetch data sources

provider "aws" {}

data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "aws_availability_zones" "list_zones" {}

data "aws_vpcs" "all_vpcs" {}

data "aws_vpc" "bk_vpc" {
  tags = {
    Name = "bharaths_vpc"
  }
}

resource "aws_subnet" "subnet1" {
  cidr_block = "172.16.3.0/24"
  vpc_id = data.aws_vpc.bk_vpc.id
  availability_zone = data.aws_availability_zones.list_zones.names[3]
  tags = {
    Name = "Bharath_test1"
    Info = "AZ: ${data.aws_availability_zones.list_zones.names[3]} in the region ${data.aws_region.current.description}"
  }
}

resource "aws_subnet" "subnet2" {
  cidr_block = "172.16.4.0/24"
  vpc_id = data.aws_vpc.bk_vpc.id
  availability_zone = data.aws_availability_zones.list_zones.names[4]
  tags = {
    Name = "Bharath_test2"
    Info = "AZ: ${data.aws_availability_zones.list_zones.names[4]} in the region ${data.aws_region.current.description}"
  }
}

output "current_region" {
  value = data.aws_region.current.description
}

output "current_region_name" {
  value = data.aws_region.current.name
}

output "current_region_id" {
  value = data.aws_region.current.id
}

output "aws_account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "azs" {
  value = data.aws_availability_zones.list_zones.names
}

output "all_vpcs" {
  value = data.aws_vpcs.all_vpcs.ids
}

output "bk_vpc" {
  value = data.aws_vpc.bk_vpc.id
}



