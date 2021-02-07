DELETE one user called raju11@bharathkumaraju.com

bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each % terraform plan
aws_iam_user.user["raju15@bharathkumaraju.com"]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user["raju14@bharathkumaraju.com"]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Refreshing state... [id=raju16@bharathkumaraju.com]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Refreshing state... [id=raju18@bharathkumaraju.com]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Refreshing state... [id=raju17@bharathkumaraju.com]
aws_iam_user.user["raju11@bharathkumaraju.com"]: Refreshing state... [id=raju11@bharathkumaraju.com]
aws_iam_user.user["raju13@bharathkumaraju.com"]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Refreshing state... [id=raju19@bharathkumaraju.com]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_iam_user.user["raju11@bharathkumaraju.com"] will be destroyed
  - resource "aws_iam_user" "user" {
      - arn           = "arn:aws:iam::172586632398:user/raju11@bharathkumaraju.com" -> null
      - force_destroy = false -> null
      - id            = "raju11@bharathkumaraju.com" -> null
      - name          = "raju11@bharathkumaraju.com" -> null
      - path          = "/" -> null
      - tags          = {} -> null
      - unique_id     = "AIDASQLXXATHIKTQU427G" -> null
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Changes to Outputs:
  ~ users_arns = [
      - "arn:aws:iam::172586632398:user/raju11@bharathkumaraju.com",
        "arn:aws:iam::172586632398:user/raju12@bharathkumaraju.com",
        # (7 unchanged elements hidden)
    ]

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each %


bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each % terraform apply -auto-approve
aws_iam_user.user["raju15@bharathkumaraju.com"]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Refreshing state... [id=raju18@bharathkumaraju.com]
aws_iam_user.user["raju13@bharathkumaraju.com"]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Refreshing state... [id=raju16@bharathkumaraju.com]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Refreshing state... [id=raju17@bharathkumaraju.com]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Refreshing state... [id=raju19@bharathkumaraju.com]
aws_iam_user.user["raju11@bharathkumaraju.com"]: Refreshing state... [id=raju11@bharathkumaraju.com]
aws_iam_user.user["raju14@bharathkumaraju.com"]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user["raju11@bharathkumaraju.com"]: Destroying... [id=raju11@bharathkumaraju.com]
aws_iam_user.user["raju11@bharathkumaraju.com"]: Destruction complete after 2s

Apply complete! Resources: 0 added, 0 changed, 1 destroyed.

Outputs:

users_arns = [
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



