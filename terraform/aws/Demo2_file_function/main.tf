provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "web" {
  ami = "ami-00b8d9cb8a7161e41" //amazon linux
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.web.id]
  user_data = file("user_data.sh")
  tags = {
    Name  = "Web server built by terraform"
    Owner = "Bharath raju"
  }
}

resource "aws_security_group" "web" {
  name        = "webserver-SG"
  description = "SG for web server"
  ingress {
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
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow all ports"
  }
  tags = {
    Name  = "WebServer SG"
    Owner = "Bharath raju"
  }
}