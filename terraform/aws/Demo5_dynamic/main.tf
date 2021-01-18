provider "aws" {
  region = "ap-southeast-1"
}


resource "aws_security_group" "rajusweb" {
  name        = "webserver-SG"
  description = "SG for web server"

  dynamic "ingress" {
     for_each = ["80", "8080", "443", "1000", "8443"]
     content {
       from_port = ingress.value
       protocol = "tcp"
       to_port = ingress.value
       cidr_blocks = ["0.0.0.0/0"]
       description = "allow port ${ingress.value}"
     }
   }
  dynamic "ingress" {
    for_each = ["8000", "9000", "7000"]
    content {
      from_port = ingress.value
      protocol = "udp"
      to_port = ingress.value
      cidr_blocks = ["0.0.0.0/0"]
      description = "allow port ${ingress.value}"
    }
  }
  ingress {
    description = "allow port SSH"
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = ["10.0.0.0/16"]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow all ports"
  }
  tags = {
    Name  = "rajus web SG"
    Owner = "Bharath raju"
  }
}