variable "aws_users" {
  description = "List of IAM Users to create"
  default = [
    "raju19@bharathkumaraju.com",
    "raju18@bharathkumaraju.com",
    "raju17@bharathkumaraju.com",
    "raju16@bharathkumaraju.com",
    "raju15@bharathkumaraju.com",
    "raju14@bharathkumaraju.com",
    "raju13@bharathkumaraju.com",
    "raju12@bharathkumaraju.com",
    "roopa",
    "Gabrile",
    "Brice",
    "jinpie"
  ]
}

variable "server_settings" {
  type = map(any)
  default = {
    web = {
      ami = "ami-00b8d9cb8a7161e41"
      instance_size = "t3.small"
      root_disksize = 20
      encrypted = true
    }
    app = {
      ami = "ami-00b8d9cb8a7161e41"
      instance_size = "t3.micro"
      root_disksize = 10
      encrypted = true
    }
  }
}

variable "create_bastion" {
  description = "Provision Bastion YES/NO"
  default = "YES"
}
