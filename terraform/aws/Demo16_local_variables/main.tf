provider "aws" {
  region = "ap-southeast-1"
}

data "aws_region" "current" {}

data "aws_availability_zones" "available" {}


locals {
  Region_fullname = data.aws_region.current.description
  Number_of_Azs = length(data.aws_availability_zones.available.names)
  Names_of_Azs  = join(",", data.aws_availability_zones.available.names)
  Full_project_name = "${var.project_name} running in ${local.Region_fullname}"
}

locals {
  Region_info = "This resource is in ${data.aws_region.current.description} consits of ${length(data.aws_availability_zones.available.names)} Azs"
  Region_info_v2 = "THis Resource in ${local.Region_fullname} consists of ${local.Number_of_Azs} AZs"
}

# Maps in locals

locals {
  tags_for_eip = {
   Environment =  var.environment
   Region_full = local.Region_info_v2
   project_name = local.Full_project_name
  }
}


resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "Test VPC"
    Region_info_v1 = local.Region_info
    Region_info_v2 = local.Region_info_v2
    AZ_names   = local.Names_of_Azs
  }
}

resource "aws_eip" "static_ip" {
  tags = merge(var.tags,local.tags_for_eip,{
     Name = "Test EIP"
     Region_info = local.Region_info
     })
}