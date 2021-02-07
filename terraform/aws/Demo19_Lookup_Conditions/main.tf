provider "aws" {
  region = "ap-southeast-1"
}

data "aws_region" "current" {}


resource "aws_instance" "web" {
  ami                    = var.ami_id_per_region[data.aws_region.current.id]
  instance_type          = lookup(var.server_size, var.env, var.server_size["my_default"])
  vpc_security_group_ids = [aws_security_group.web.id]

  root_block_device {
    volume_size = 10
    encrypted = (var.env == "prod") ? true : false
  }

  dynamic "ebs_block_device" {
    for_each = (var.env == "prod") ? [true] :[]
    content {
      device_name = "/dev/sdb"
      volume_size = 40
      encrypted = true
    }
  }
 /* ebs_block_device {
    device_name = "/dev/sdb"
    volume_size = 40
    encrypted = true
  }
 */
  volume_tags = {
    Name = "Disk-${var.env}"
  }
  tags = {
    Name = "Server-${var.env}"
  }
}

resource "aws_security_group" "web" {
  name        = "WebServer-SG"
  description = "Security Group for my WebServer"

  dynamic "ingress" {
    for_each = lookup(var.allow_port, var.env, var.allow_port["rest"] )
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  egress {
    description = "Allow ALL ports"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "bk server dynamic SG"
    Owner = "bharath"
  }
}