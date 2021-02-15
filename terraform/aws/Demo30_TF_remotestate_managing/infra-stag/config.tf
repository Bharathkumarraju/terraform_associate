terraform {
  backend "s3" {
    bucket = "bharathkumar-tf-remote-state"
    key = "infra-stag/terraform.tfstate"
    region = "ap-southeast-1"
  }
}