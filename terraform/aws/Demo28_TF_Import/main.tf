provider "aws" {
  region = "us-west-1"
}

resource "aws_instance" "node1" {
  instance_type = "t3.micro"
  ami = "ami-05655c267c89566dd"
  vpc_security_group_ids = [aws_security_group.bksg.id]
  tags = {
    Name = "Node-1"
    Owner = "BD"
  }
}

resource "aws_instance" "node2" {
  instance_type = "t3.micro"
  ami = "ami-05655c267c89566dd"
  vpc_security_group_ids = [aws_security_group.bksg.id]
  tags = {
    Name = "Node-2"
    Owner = "BD"
  }
}

resource "aws_instance" "node3" {
  instance_type = "t3.micro"
  ami = "ami-05655c267c89566dd"
  vpc_security_group_ids = [aws_security_group.bksg.id]
  tags = {
    Name = "Node-3"
    Owner = "BD"
  }
}


resource "aws_security_group" "bksg" {
  name = "default"
  description = "default VPC security group"
  ingress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    self = true
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
}