provider "aws" {
  region = "us-west-1"
}

provider "aws" {
  region = "eu-west-1"
  alias = "EUROPE"
}

provider "aws" {
  region = "ap-southeast-1"
  alias  ="ASIA"
}

data "aws_ami" "latest_ubuntu20" {
  owners = ["099720109477"]
  most_recent = true
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

data "aws_ami" "europe_latest_ubuntu20" {
  provider = aws.EUROPE
  owners = ["099720109477"]
  most_recent = true
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}

data "aws_ami" "asia_latest_ubuntu20" {
  provider = aws.ASIA
  owners = ["099720109477"]
  most_recent = true
  filter {
    name = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }
}


resource "aws_instance" "bk_server" {
  ami = data.aws_ami.latest_ubuntu20.id
  instance_type = "t3.micro"
  tags = {
    Name = "Bk server"
  }
}


resource "aws_instance" "bk_europe_server" {
  provider = aws.EUROPE
  ami = data.aws_ami.europe_latest_ubuntu20.id
  instance_type = "t3.micro"
  tags = {
    Name = "Bk europe server"
  }
}

resource "aws_instance" "bk_asia_server" {
  provider = aws.ASIA
  ami = data.aws_ami.asia_latest_ubuntu20.id
  instance_type = "t3.micro"
  tags = {
    Name = "Bk asia server"
  }
}