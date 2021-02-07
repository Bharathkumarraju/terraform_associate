Delete one user from aws_users variable

bharathkumarraju@R77-NB193 Demo20_terraform_loops_count % terraform plan
aws_iam_user.user[0]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user[2]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user[4]: Refreshing state... [id=raju11@bharathkumaraju.com]
aws_iam_user.user[1]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user[3]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_instance.servers[2]: Refreshing state... [id=i-035ac6d6afb0f1129]
aws_instance.servers[0]: Refreshing state... [id=i-0f57768bb02789f93]
aws_instance.servers[3]: Refreshing state... [id=i-0648fff087da3f43f]
aws_instance.servers[1]: Refreshing state... [id=i-07ad1fbd197e29d26]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  ~ update in-place
  - destroy

Terraform will perform the following actions:

  # aws_iam_user.user[2] will be updated in-place
  ~ resource "aws_iam_user" "user" {
        id            = "raju13@bharathkumaraju.com"
      ~ name          = "raju13@bharathkumaraju.com" -> "raju12@bharathkumaraju.com"
        tags          = {}
        # (4 unchanged attributes hidden)
    }

  # aws_iam_user.user[3] will be updated in-place
  ~ resource "aws_iam_user" "user" {
        id            = "raju12@bharathkumaraju.com"
      ~ name          = "raju12@bharathkumaraju.com" -> "raju11@bharathkumaraju.com"
        tags          = {}
        # (4 unchanged attributes hidden)
    }

  # aws_iam_user.user[4] will be destroyed
  - resource "aws_iam_user" "user" {
      - arn           = "arn:aws:iam::172586632398:user/raju11@bharathkumaraju.com" -> null
      - force_destroy = false -> null
      - id            = "raju11@bharathkumaraju.com" -> null
      - name          = "raju11@bharathkumaraju.com" -> null
      - path          = "/" -> null
      - tags          = {} -> null
      - unique_id     = "AIDASQLXXATHES2GM5JVL" -> null
    }

Plan: 0 to add, 2 to change, 1 to destroy.

Changes to Outputs:
  ~ iam_user_arn = [
        # (3 unchanged elements hidden)
        "arn:aws:iam::172586632398:user/raju12@bharathkumaraju.com",
      - "arn:aws:iam::172586632398:user/raju11@bharathkumaraju.com",
    ]

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo20_terraform_loops_count %


IAM_USER getting ERRORRRRRRRRRRRR
------------------------------------------:

bharathkumarraju@R77-NB193 Demo20_terraform_loops_count % terraform apply -auto-approve
aws_iam_user.user[2]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user[4]: Refreshing state... [id=raju11@bharathkumaraju.com]
aws_iam_user.user[0]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user[3]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user[1]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_instance.servers[3]: Refreshing state... [id=i-0648fff087da3f43f]
aws_instance.servers[2]: Refreshing state... [id=i-035ac6d6afb0f1129]
aws_instance.servers[1]: Refreshing state... [id=i-07ad1fbd197e29d26]
aws_instance.servers[0]: Refreshing state... [id=i-0f57768bb02789f93]
aws_iam_user.user[4]: Destroying... [id=raju11@bharathkumaraju.com]
aws_iam_user.user[3]: Modifying... [id=raju12@bharathkumaraju.com]
aws_iam_user.user[2]: Modifying... [id=raju13@bharathkumaraju.com]
aws_iam_user.user[4]: Destruction complete after 2s

Error: Error updating IAM User raju12@bharathkumaraju.com: EntityAlreadyExists: User with name raju11@bharathkumaraju.com already exists.
        status code: 409, request id: 1edc6252-06cd-4635-9f81-7f2c2651f1b1



Error: Error updating IAM User raju13@bharathkumaraju.com: EntityAlreadyExists: User with name raju12@bharathkumaraju.com already exists.
        status code: 409, request id: 747f245f-719a-4c1f-a311-6411dd781215


bharathkumarraju@R77-NB193 Demo20_terraform_loops_count %


