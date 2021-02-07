provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "webserver" {
  ami = "ami-00b8d9cb8a7161e41"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.web_security_group.id]
  user_data = file("user_data.sh")
  tags = {
    Name = "bharaths web SG"
    Owner = "BHARATH"
  }
}

resource "aws_security_group" "web_security_group" {
dynamic "ingress" {
  for_each = ["80","443","8080","9080"]
  content {
    from_port = ingress.value
    protocol = "tcp"
    to_port = ingress.value
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow port ${ingress.value}"
  }
}
/*  ingress {
    from_port = 80
    protocol = "tcp"
    to_port = 80
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow port 80"
  }
  ingress {
    from_port = 443
    protocol = "tcp"
    to_port = 443
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow port 443"
  }
  ingress {
    from_port = 8080
    protocol = "tcp"
    to_port = 8080
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow port 8080"
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
    Name =  "web server SG"
    Owner = "Hanumans SG"
  }
}