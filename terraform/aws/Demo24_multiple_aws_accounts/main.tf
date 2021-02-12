provider "aws" {
  region = "eu-west-2"
}

provider "aws" {
  region = "ap-southeast-1"
  alias = "UAT"
#  access_key = ""
#  secret_key = ""
  assume_role {
    role_arn = "arn:aws:iam::928157669239:role/TerraformMultiAccountRole"
  }
}

resource "aws_vpc" "bharath_master_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Bharath Master VPC"
  }
}

resource "aws_vpc" "uat_vpc" {
  provider = aws.UAT
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Bharath UAT VPC"
  }
}