provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "latest_ubuntu20" {
  owners = ["099720109477"]
  most_recent = true
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

data "aws_ami" "latest_amazonlinux" {
  owners = ["137112412989"]
  most_recent = true
  filter {
    name = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}


data "aws_ami" "latest_windowsserver2019" {
  owners = ["801119661308"]
  most_recent = true
  filter {
    name = "name"
    values = ["Windows_Server-2019-English-Full-Base-*"]
  }
}

output "latest_ubuntu20_ami_id" {
  value = data.aws_ami.latest_ubuntu20.id
}

output "latest_amazon_linux_ami_id" {
  value = data.aws_ami.latest_amazonlinux.id
}

output "windows_Server2019_ami_id" {
  value = data.aws_ami.latest_windowsserver2019.id
}