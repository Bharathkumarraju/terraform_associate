provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "server1" {
  ami = "ami-00b8d9cb8a7161e41"
  instance_type = "t3.micro"
  tags = {
    Name = "Server Number 1"
  }
}

resource "aws_instance" "server2" {
  ami = "ami-00b8d9cb8a7161e41"
  instance_type = "t3.micro"
  tags = {
    Name = "Server Number 2"
  }
}

resource "aws_instance" "server3" {
  ami = "ami-00b8d9cb8a7161e41"
  instance_type = "t3.micro"
  tags = {
    Name = "Server Number 3"
  }
}