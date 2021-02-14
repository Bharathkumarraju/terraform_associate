provider "aws" {
  region = "eu-west-2"
}

module "bharath_vpc" {
  source = "../modules/aws_network"
}



module "bharath_vpc_staging" {
  source = "../modules/aws_network"
  env  = "staging"
  vpc_cidr = "10.100.0.0/16"
  public_subnet_cidrs = ["10.100.1.0/24","10.100.2.0/24"]
  private_subnet_cidrs = [] # In staging don't need to create any private subnets
}


module "bharath_vpc_production" {
  source = "../modules/aws_network"
  env  = "staging"
  vpc_cidr = "10.200.0.0/16"
  public_subnet_cidrs = ["10.200.1.0/24","10.200.2.0/24","10.200.3.0/24"]
  private_subnet_cidrs = ["10.200.11.0/24","10.200.12.0/24","10.200.13.0/24"]
  tags = {
    Owner = "BKRAJU"
    Code = "18181818"
    Project = "BKRPROD"
  }
}
