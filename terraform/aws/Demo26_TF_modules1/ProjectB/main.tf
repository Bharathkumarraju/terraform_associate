
provider "aws" {
  region = "eu-west-2"
}

module "bharath_vpc_production" {
  source = "../modules/aws_network"
  env  = "production"
  vpc_cidr = "10.200.0.0/16"
  public_subnet_cidrs = ["10.200.1.0/24","10.200.2.0/24","10.200.3.0/24"]
  private_subnet_cidrs = ["10.200.11.0/24","10.200.12.0/24","10.200.13.0/24"]
  tags = {
    Owner = "BKRAJU"
    Code = "18181818"
    Project = "BKRPROD"
  }
}

module "prod_server" {
  source = "../modules/aws_testserver"
  name = "BK-PROD"
  message =  "standalone server"
  subnet_id = module.bharath_vpc_production.public_subnet_ids[2]
}
