provider "aws" {
  region = "ap-southeast-1"
}
#-------------------------------------------
# This is a practise for test
#-------------------------------------------

resource "aws_instance" "my_ubuntu" {
  ami           = "ami-0c20b8b385217763f"
  instance_type = "t2.small"  // Changed the instance type
  key_name      = "bharathtest"

  tags = {
    Name    = "my-ubuntu-server"
    Owner   = "Bharath"
    project =  "Phoenix"
  }
}

resource "aws_instance" "my_amazon" {
  ami           = "ami-00b8d9cb8a7161e41"
  instance_type = "t3.micro"
  key_name      = "bharathtest"

  tags = {
    Name  = "my-amazon-linux-server"
    Owner = "Bharath"
  }
}
