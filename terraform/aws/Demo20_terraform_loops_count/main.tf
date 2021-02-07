provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "servers" {
  count = 4
  ami = "ami-00b8d9cb8a7161e41"
  instance_type = "t3.micro"
  tags = {
    Name  = "Server${count.index + 1}"
    Owner = "Bharath"
  }
}

# count can not be used with IAM users cause if we delete existing users with count it gives ERROR basically.
# We can fix this with for_each :) :) :) :)
resource "aws_iam_user" "user" {
  count = length(var.aws_users)
  name = element(var.aws_users, count.index )
}

resource "aws_instance" "bastion_server" {
  count = var.create_bastion == "YES" ? 1 : 0
  ami = "ami-00b8d9cb8a7161e41"
  instance_type = "t3.micro"
  tags = {
    Name = "Bastion Server"
    Owner = "Bharath Raju"
  }
}