provider "aws" {
  region = "ap-southeast-1"
}

resource "null_resource" "command1" {
  provisioner "local-exec" {
    command = "echo Terraform START: $(date) >> log.txt"
  }
}

resource "null_resource" "command2" {
  provisioner "local-exec" {
    command = "ping -c 5 www.google.com"
  }
}

resource "null_resource" "command3" {
  provisioner "local-exec" {
    interpreter = ["python", "-c"]
    command   = "print('Hello World from python!')"
  }
}

resource "null_resource" "command4" {
  provisioner "local-exec" {
    command = "echo $NAME1 $NAME2 $NAME3 >> log.txt"
    environment = {
      NAME1 = "raju1"
      NAME2 = "raju2"
      NAME3 = "raju3"
    }
  }
  depends_on = [null_resource.command1]
}

resource "aws_instance" "bk_server" {
  ami = "ami-00b8d9cb8a7161e41"
  instance_type = "t3.micro"
  provisioner "local-exec" {
    command = "echo ${aws_instance.bk_server.private_ip} >> log.txt "
  }
}

resource "null_resource" "command5" {
  provisioner "local-exec" {
    command = "echo Terraform FINISH: $(date) >> log.txt"
  }
  depends_on = [
  null_resource.command1,
  null_resource.command2,
  null_resource.command3,
  null_resource.command4,
  aws_instance.bk_server
  ]
}