provider "aws" {
  region = "eu-west-2"
}

terraform {
  backend "s3" {
    bucket = "bharathkumar-tf-remote-state"
    key = "dev/webserver/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket = "bharathkumar-tf-remote-state"
    key = "dev/network/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

data "aws_ami" "latest_amazon_linux" {
  owners = ["amazon"]
  most_recent = true
  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

resource "aws_instance" "web" {
  ami = data.aws_ami.latest_amazon_linux.id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.web.id]
  subnet_id = data.terraform_remote_state.vpc.outputs.public_subnet_ids[0]
  user_data = file("user_data.sh")
  tags = {
    Name  = "${var.env}-Web Server terraform"
    Owner = "Bharath raju"
  }
}

resource "aws_security_group" "web" {
  name        = "${var.env}-webserver-SG"
  description = "SG for web server"
  vpc_id = data.terraform_remote_state.vpc.outputs.vpc_id
  dynamic "ingress" {
    for_each = ["80","443"]
    content {
      from_port = ingress.value
      protocol = "tcp"
      to_port = ingress.value
      cidr_blocks = ["0.0.0.0/0"]
      description = "allow port ${ingress.value}"
    }
  }
  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = [data.terraform_remote_state.vpc.outputs.vpc_cidr]
  }
/*  ingress {
    from_port = 80
    protocol = "tcp"
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow port HTTP"
  }
  ingress {
    from_port = 443
    protocol = "tcp"
    to_port = 443
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow port HTTPS"
  }
  */
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow all ports"
  }
  tags = {
    Name  = "${var.env}-WebServer SG"
    Owner = "Bharath raju"
  }
}