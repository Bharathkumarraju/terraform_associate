variable "aws_users" {
  description = "List of IAM Users to create"
  default = [
    "raju15@bharathkumaraju.com",
    "raju14@bharathkumaraju.com",
    "raju13@bharathkumaraju.com",
    "raju12@bharathkumaraju.com",
    "raju11@bharathkumaraju.com"
  ]
}

variable "create_bastion" {
  description = "provision bastion server YES/NO"
  default = "NO"
}