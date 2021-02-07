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