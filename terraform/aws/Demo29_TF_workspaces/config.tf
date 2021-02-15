terraform {
  backend "s3" {
    bucket = "bharathkumar-tf-remote-state"
    key = "prod/terraform.tfstate"
    region = "ap-southeast-1"
  }
}