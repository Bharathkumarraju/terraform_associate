provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "web" {
  ami = "ami-00b8d9cb8a7161e41" //amazon linux
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.general.id]
  tags = {
    Name  = "bk_web"
    Owner = "Bharath raju"
  }
  depends_on = [aws_instance.db, aws_instance.app]
}
resource "aws_instance" "app" {
  ami = "ami-00b8d9cb8a7161e41" //amazon linux
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.general.id]
  tags = {
    Name  = "bk_app"
    Owner = "Bharath raju"
  }
  depends_on = [aws_instance.db]
}

resource "aws_instance" "db" {
  ami = "ami-00b8d9cb8a7161e41" //amazon linux
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.general.id]
  tags = {
    Name  = "bk_db"
    Owner = "Bharath raju"
  }
}

resource "aws_security_group" "general" {
  name = "bksg"
  dynamic "ingress" {
    for_each = ["80", "443", "22", "3389"]
    content {
      from_port = ingress.value
      to_port = ingress.value
      protocol = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "bharaths_sg"
  }
}

#-------------outputs-------------------------------------

output "bharath_sg_id" {
  description = "SG id for my server"
  value = aws_security_group.general.id
}

/*output "bharath_sg_all_details" {
  description = "all details of SG"
  value = aws_security_group.general
} */

output "web_ip" {
  value = aws_instance.web.private_ip
}

output "app_ip" {
  value = aws_instance.app.private_ip
}

output "db_ip" {
  value = aws_instance.db.private_ip
}

output "list_all_instance_ids" {
  value = [
    aws_instance.web.id,
    aws_instance.app.id,
    aws_instance.db.id
  ]
}
