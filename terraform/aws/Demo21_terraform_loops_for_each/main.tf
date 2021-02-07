provider "aws" {
  region = "ap-southeast-1"
}


resource "aws_iam_user" "user" {
#either map (or) set ... in set there is no order but in list there is order like index 0,1,2,3 etc....
#toset is to convert list to set, set is like list but without indexes.
  for_each = toset(var.aws_users)
  name = each.value
}



/*
resource "null_resource" "test" {
  for_each = toset(var.aws_users)
}
*/