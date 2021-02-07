bharathkumarraju@R77-NB193 Demo20_terraform_loops_count % terraform plan
aws_instance.servers[1]: Refreshing state... [id=i-07ad1fbd197e29d26]
aws_instance.servers[0]: Refreshing state... [id=i-0f57768bb02789f93]
aws_instance.servers[2]: Refreshing state... [id=i-035ac6d6afb0f1129]
aws_instance.servers[3]: Refreshing state... [id=i-0648fff087da3f43f]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_iam_user.user[0] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju15@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user[1] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju14@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user[2] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju13@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user[3] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju12@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user[4] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju11@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

Plan: 5 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo20_terraform_loops_count %

bharathkumarraju@R77-NB193 Demo20_terraform_loops_count % terraform apply -auto-approve
aws_instance.servers[3]: Refreshing state... [id=i-0648fff087da3f43f]
aws_instance.servers[1]: Refreshing state... [id=i-07ad1fbd197e29d26]
aws_instance.servers[0]: Refreshing state... [id=i-0f57768bb02789f93]
aws_instance.servers[2]: Refreshing state... [id=i-035ac6d6afb0f1129]
aws_iam_user.user[1]: Creating...
aws_iam_user.user[4]: Creating...
aws_iam_user.user[2]: Creating...
aws_iam_user.user[0]: Creating...
aws_iam_user.user[3]: Creating...
aws_iam_user.user[0]: Creation complete after 2s [id=raju15@bharathkumaraju.com]
aws_iam_user.user[1]: Creation complete after 3s [id=raju14@bharathkumaraju.com]
aws_iam_user.user[2]: Creation complete after 3s [id=raju13@bharathkumaraju.com]
aws_iam_user.user[3]: Creation complete after 3s [id=raju12@bharathkumaraju.com]
aws_iam_user.user[4]: Creation complete after 3s [id=raju11@bharathkumaraju.com]

Apply complete! Resources: 5 added, 0 changed, 0 destroyed.

Outputs:

instance_ids = [
  "i-0f57768bb02789f93",
  "i-07ad1fbd197e29d26",
  "i-035ac6d6afb0f1129",
  "i-0648fff087da3f43f",
]
instance_public_ips = [
  "13.212.245.247",
  "54.179.77.110",
  "13.212.213.96",
  "54.179.159.234",
]
bharathkumarraju@R77-NB193 Demo20_terraform_loops_count %



bharathkumarraju@R77-NB193 Demo20_terraform_loops_count % terraform apply -auto-approve
aws_iam_user.user[3]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user[2]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user[4]: Refreshing state... [id=raju11@bharathkumaraju.com]
aws_iam_user.user[0]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user[1]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_instance.servers[3]: Refreshing state... [id=i-0648fff087da3f43f]
aws_instance.servers[1]: Refreshing state... [id=i-07ad1fbd197e29d26]
aws_instance.servers[0]: Refreshing state... [id=i-0f57768bb02789f93]
aws_instance.servers[2]: Refreshing state... [id=i-035ac6d6afb0f1129]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

iam_user_arn = [
  "arn:aws:iam::172586632398:user/raju15@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju14@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju13@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju12@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju11@bharathkumaraju.com",
]
instance_ids = [
  "i-0f57768bb02789f93",
  "i-07ad1fbd197e29d26",
  "i-035ac6d6afb0f1129",
  "i-0648fff087da3f43f",
]
instance_public_ips = [
  "13.212.245.247",
  "54.179.77.110",
  "13.212.213.96",
  "54.179.159.234",
]
bharathkumarraju@R77-NB193 Demo20_terraform_loops_count %
