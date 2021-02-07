provider "aws" {
  region = "ap-southeast-1"
}


resource "aws_iam_user" "user" {
#either map (or) set ... in set there is no order but in list there is order like index 0,1,2,3 etc....
#toset is to convert list to set, set is like list but without indexes.
  for_each = toset(var.aws_users)
  name = each.value
}

resource "aws_instance" "bharath_server" {
  for_each = toset(["Dev", "Staging", "Prod"])
  ami = "ami-00b8d9cb8a7161e41"
  instance_type = "t3.micro"
  tags = {
    Name = "Server-${each.value}"
    Owner = "Bharath Raju"
  }
}


resource "aws_instance" "server" {
  for_each = var.server_settings
  ami           = each.value["ami"]
  instance_type = each.value["instance_size"]
  root_block_device {
    volume_size = each.value["root_disksize"]
    encrypted   = each.value["encrypted"]
  }
  volume_tags = {
    Name ="Disk-${each.key}"
  }
  tags = {
    Name = "Server-${each.key}"
    Owner = "Bharath Raju"
  }
}

resource "aws_instance" "bastion_server" {
  for_each = var.create_bastion == "YES" ? toset(["bastion"]) : []
  ami = "ami-00b8d9cb8a7161e41"
  instance_type = "t3.micro"
  tags = {
    Name  = "Bastion server"
    Owner =  "Bharath Raju"
  }
}







/*
resource "null_resource" "test" {
  for_each = toset(var.aws_users)
}
*/