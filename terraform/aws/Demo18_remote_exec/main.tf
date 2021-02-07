provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web" {
  ami                    = "ami-00b8d9cb8a7161e41" // Amazon Linux2
  instance_type          = var.instance_size
  vpc_security_group_ids = [aws_security_group.web.id]
  key_name               = var.key_pair
  user_data              = file("user_data.sh") // Static File
  # Use merge function to merge map of tags from variables
  tags = merge(var.tags, {
    Name = "${var.tags["Environment"]} WebServer Built by Terraform"
  })
  /*
  tags = {
    Name  = "WebServer Built by Terraform"
    Owner = "Bharath Raju"
  }
*/

 /* lifecycle {
    create_before_destroy = true
  }
  */
  provisioner "remote-exec" {
    inline = [
    "mkdir /home/ec2-user/terraform",
    "cd /home/ec2-user/terraform",
    "touch hello.txt",
    "echo 'Terraform is here.......' > terraform.txt"
    ]
    connection {
      type = "ssh"
      user ="ec2-user"
      host = self.public_ip
      private_key = file("bhararthtfcloud.pem")
    }
  }
}

resource "aws_security_group" "web" {
  name        = "WebServer-SG"
  description = "Security Group for my WebServer"

  dynamic "ingress" {
    for_each = var.port_list
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

  tags = merge(var.tags, {
    Name = "${var.tags["Environment"]} Webserver SG by Terraform"
  })
  /*
  tags = {
    Name  = "WebServer SG by Terraform"
    Owner = "Bharath TF"
  }
  */
}