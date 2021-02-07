bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each % terraform plan

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_iam_user.user["raju11@bharathkumaraju.com"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju11@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user["raju12@bharathkumaraju.com"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju12@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user["raju13@bharathkumaraju.com"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju13@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user["raju14@bharathkumaraju.com"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju14@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user["raju15@bharathkumaraju.com"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju15@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user["raju16@bharathkumaraju.com"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju16@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user["raju17@bharathkumaraju.com"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju17@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user["raju18@bharathkumaraju.com"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju18@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user["raju19@bharathkumaraju.com"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju19@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

Plan: 9 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each %



bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each % terraform apply -auto-approve
aws_iam_user.user["raju11@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju14@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju18@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju15@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju16@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju19@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju12@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju17@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju13@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju13@bharathkumaraju.com"]: Creation complete after 2s [id=raju13@bharathkumaraju.com]
aws_iam_user.user["raju14@bharathkumaraju.com"]: Creation complete after 2s [id=raju14@bharathkumaraju.com]
aws_iam_user.user["raju15@bharathkumaraju.com"]: Creation complete after 2s [id=raju15@bharathkumaraju.com]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Creation complete after 2s [id=raju12@bharathkumaraju.com]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Creation complete after 2s [id=raju19@bharathkumaraju.com]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Creation complete after 2s [id=raju17@bharathkumaraju.com]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Creation complete after 2s [id=raju16@bharathkumaraju.com]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Creation complete after 2s [id=raju18@bharathkumaraju.com]
aws_iam_user.user["raju11@bharathkumaraju.com"]: Creation complete after 2s [id=raju11@bharathkumaraju.com]

Apply complete! Resources: 9 added, 0 changed, 0 destroyed.

Outputs:

users_arns = {
  "raju11@bharathkumaraju.com" = {
    "arn" = "arn:aws:iam::172586632398:user/raju11@bharathkumaraju.com"
    "force_destroy" = false
    "id" = "raju11@bharathkumaraju.com"
    "name" = "raju11@bharathkumaraju.com"
    "path" = "/"
    "permissions_boundary" = tostring(null)
    "tags" = tomap(null) /* of string */
    "unique_id" = "AIDASQLXXATHIKTQU427G"
  }
  "raju12@bharathkumaraju.com" = {
    "arn" = "arn:aws:iam::172586632398:user/raju12@bharathkumaraju.com"
    "force_destroy" = false
    "id" = "raju12@bharathkumaraju.com"
    "name" = "raju12@bharathkumaraju.com"
    "path" = "/"
    "permissions_boundary" = tostring(null)
    "tags" = tomap(null) /* of string */
    "unique_id" = "AIDASQLXXATHMENSYDT2F"
  }
  "raju13@bharathkumaraju.com" = {
    "arn" = "arn:aws:iam::172586632398:user/raju13@bharathkumaraju.com"
    "force_destroy" = false
    "id" = "raju13@bharathkumaraju.com"
    "name" = "raju13@bharathkumaraju.com"
    "path" = "/"
    "permissions_boundary" = tostring(null)
    "tags" = tomap(null) /* of string */
    "unique_id" = "AIDASQLXXATHC3RP76LPO"
  }
  "raju14@bharathkumaraju.com" = {
    "arn" = "arn:aws:iam::172586632398:user/raju14@bharathkumaraju.com"
    "force_destroy" = false
    "id" = "raju14@bharathkumaraju.com"
    "name" = "raju14@bharathkumaraju.com"
    "path" = "/"
    "permissions_boundary" = tostring(null)
    "tags" = tomap(null) /* of string */
    "unique_id" = "AIDASQLXXATHJH23TYIUP"
  }
  "raju15@bharathkumaraju.com" = {
    "arn" = "arn:aws:iam::172586632398:user/raju15@bharathkumaraju.com"
    "force_destroy" = false
    "id" = "raju15@bharathkumaraju.com"
    "name" = "raju15@bharathkumaraju.com"
    "path" = "/"
    "permissions_boundary" = tostring(null)
    "tags" = tomap(null) /* of string */
    "unique_id" = "AIDASQLXXATHMARAR3WZL"
  }
  "raju16@bharathkumaraju.com" = {
    "arn" = "arn:aws:iam::172586632398:user/raju16@bharathkumaraju.com"
    "force_destroy" = false
    "id" = "raju16@bharathkumaraju.com"
    "name" = "raju16@bharathkumaraju.com"
    "path" = "/"
    "permissions_boundary" = tostring(null)
    "tags" = tomap(null) /* of string */
    "unique_id" = "AIDASQLXXATHPVBA7XDPM"
  }
  "raju17@bharathkumaraju.com" = {
    "arn" = "arn:aws:iam::172586632398:user/raju17@bharathkumaraju.com"
    "force_destroy" = false
    "id" = "raju17@bharathkumaraju.com"
    "name" = "raju17@bharathkumaraju.com"
    "path" = "/"
    "permissions_boundary" = tostring(null)
    "tags" = tomap(null) /* of string */
    "unique_id" = "AIDASQLXXATHCF3R7OBQE"
  }
  "raju18@bharathkumaraju.com" = {
    "arn" = "arn:aws:iam::172586632398:user/raju18@bharathkumaraju.com"
    "force_destroy" = false
    "id" = "raju18@bharathkumaraju.com"
    "name" = "raju18@bharathkumaraju.com"
    "path" = "/"
    "permissions_boundary" = tostring(null)
    "tags" = tomap(null) /* of string */
    "unique_id" = "AIDASQLXXATHELCCBWOOW"
  }
  "raju19@bharathkumaraju.com" = {
    "arn" = "arn:aws:iam::172586632398:user/raju19@bharathkumaraju.com"
    "force_destroy" = false
    "id" = "raju19@bharathkumaraju.com"
    "name" = "raju19@bharathkumaraju.com"
    "path" = "/"
    "permissions_boundary" = tostring(null)
    "tags" = tomap(null) /* of string */
    "unique_id" = "AIDASQLXXATHOX6WM5WWB"
  }
}
bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each %



bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each % terraform apply -auto-approve
aws_iam_user.user["raju14@bharathkumaraju.com"]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Refreshing state... [id=raju16@bharathkumaraju.com]
aws_iam_user.user["raju11@bharathkumaraju.com"]: Refreshing state... [id=raju11@bharathkumaraju.com]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Refreshing state... [id=raju19@bharathkumaraju.com]
aws_iam_user.user["raju15@bharathkumaraju.com"]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Refreshing state... [id=raju18@bharathkumaraju.com]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Refreshing state... [id=raju17@bharathkumaraju.com]
aws_iam_user.user["raju13@bharathkumaraju.com"]: Refreshing state... [id=raju13@bharathkumaraju.com]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

users_arns = [
  "arn:aws:iam::172586632398:user/raju11@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju12@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju13@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju14@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju15@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju16@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju17@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju18@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju19@bharathkumaraju.com",
]
bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each %


