terraform {
  backend "s3" {
    bucket = "bharathkumar-tf-remote-state"
    key = "infra-prod/terraform.tfstate"
    region = "ap-southeast-1"
  }
}