variable "env" {
  default = "prod"
}

variable "server_size" {
  default = {
    prod       = "t3.medium"
    staging    = "t3.small"
    dev        = "t3.micro"
    my_default = "t3.nano"
  }
}

variable "ami_id_per_region" {
  description = "My Custom AMI id per Region"
  default = {
    "us-west-2"  = "ami-0e472933a1395e172"
    "us-west-1"  = "ami-08d9a394ac1c2994c"
    "eu-west-1"  = "ami-0ce1e3f77cd41957e"
    "ap-south-1" = "ami-08f63db601b82ff5f"
    "ap-southeast-1" = "ami-00b8d9cb8a7161e41"
  }
}

variable "allow_port" {
  default = {
    prod = ["80", "443"]
    rest = ["80", "443", "8080", "22"]
  }
}