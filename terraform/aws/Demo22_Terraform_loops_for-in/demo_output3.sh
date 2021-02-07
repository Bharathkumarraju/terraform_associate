bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in % terraform plan
aws_instance.servers[1]: Refreshing state... [id=i-07963daff9ba9cda7]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Refreshing state... [id=raju17@bharathkumaraju.com]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Refreshing state... [id=raju18@bharathkumaraju.com]
aws_iam_user.user["roopa"]: Refreshing state... [id=roopa]
aws_iam_user.user["Gabrile"]: Refreshing state... [id=Gabrile]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user["jinpie"]: Refreshing state... [id=jinpie]
aws_instance.servers[0]: Refreshing state... [id=i-0dd6f8c5547141e7e]
aws_instance.servers[2]: Refreshing state... [id=i-03213c68fdd37fc79]
aws_instance.servers[3]: Refreshing state... [id=i-06d02f8059654f022]
aws_iam_user.user["Brice"]: Refreshing state... [id=Brice]
aws_iam_user.user["raju14@bharathkumaraju.com"]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Refreshing state... [id=raju16@bharathkumaraju.com]
aws_iam_user.user["raju15@bharathkumaraju.com"]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user["raju13@bharathkumaraju.com"]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Refreshing state... [id=raju19@bharathkumaraju.com]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create
  - destroy

Terraform will perform the following actions:

  # aws_iam_user.user["Gabri"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "Gabri"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user["Gabrile"] will be destroyed
  - resource "aws_iam_user" "user" {
      - arn           = "arn:aws:iam::172586632398:user/Gabrile" -> null
      - force_destroy = false -> null
      - id            = "Gabrile" -> null
      - name          = "Gabrile" -> null
      - path          = "/" -> null
      - tags          = {} -> null
      - unique_id     = "AIDASQLXXATHD57247TWB" -> null
    }

  # aws_iam_user.user["jinp"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "jinp"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user["jinpie"] will be destroyed
  - resource "aws_iam_user" "user" {
      - arn           = "arn:aws:iam::172586632398:user/jinpie" -> null
      - force_destroy = false -> null
      - id            = "jinpie" -> null
      - name          = "jinpie" -> null
      - path          = "/" -> null
      - tags          = {} -> null
      - unique_id     = "AIDASQLXXATHKAI3BTFSN" -> null
    }

Plan: 2 to add, 0 to change, 2 to destroy.

Changes to Outputs:
  + users_unique_id_arn      = [
      + "UserID: AIDASQLXXATHPJ4TWM5L7 has ARN: arn:aws:iam::172586632398:user/Brice",
      + (known after apply),
      + (known after apply),
      + "UserID: AIDASQLXXATHOCIFWYRJM has ARN: arn:aws:iam::172586632398:user/raju12@bharathkumaraju.com",
      + "UserID: AIDASQLXXATHP4E4DRXVW has ARN: arn:aws:iam::172586632398:user/raju13@bharathkumaraju.com",
      + "UserID: AIDASQLXXATHCL32SH2NB has ARN: arn:aws:iam::172586632398:user/raju14@bharathkumaraju.com",
      + "UserID: AIDASQLXXATHORWDN6FL7 has ARN: arn:aws:iam::172586632398:user/raju15@bharathkumaraju.com",
      + "UserID: AIDASQLXXATHBD4ZCWTH4 has ARN: arn:aws:iam::172586632398:user/raju16@bharathkumaraju.com",
      + "UserID: AIDASQLXXATHNJLSAA2UK has ARN: arn:aws:iam::172586632398:user/raju17@bharathkumaraju.com",
      + "UserID: AIDASQLXXATHG3HUA7JR7 has ARN: arn:aws:iam::172586632398:user/raju18@bharathkumaraju.com",
      + "UserID: AIDASQLXXATHCV2IMWCHV has ARN: arn:aws:iam::172586632398:user/raju19@bharathkumaraju.com",
      + "UserID: AIDASQLXXATHKVZOZLXWL has ARN: arn:aws:iam::172586632398:user/roopa",
    ]
  + users_unique_id_name_map = (known after apply)

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in % terraform apply -auto-approve
aws_iam_user.user["raju14@bharathkumaraju.com"]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user["Gabrile"]: Refreshing state... [id=Gabrile]
aws_iam_user.user["Brice"]: Refreshing state... [id=Brice]
aws_iam_user.user["raju15@bharathkumaraju.com"]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_instance.servers[2]: Refreshing state... [id=i-03213c68fdd37fc79]
aws_instance.servers[1]: Refreshing state... [id=i-07963daff9ba9cda7]
aws_instance.servers[0]: Refreshing state... [id=i-0dd6f8c5547141e7e]
aws_instance.servers[3]: Refreshing state... [id=i-06d02f8059654f022]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Refreshing state... [id=raju16@bharathkumaraju.com]
aws_iam_user.user["raju13@bharathkumaraju.com"]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user["jinpie"]: Refreshing state... [id=jinpie]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Refreshing state... [id=raju19@bharathkumaraju.com]
aws_iam_user.user["roopa"]: Refreshing state... [id=roopa]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Refreshing state... [id=raju18@bharathkumaraju.com]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Refreshing state... [id=raju17@bharathkumaraju.com]
aws_iam_user.user["jinpie"]: Destroying... [id=jinpie]
aws_iam_user.user["Gabrile"]: Destroying... [id=Gabrile]
aws_iam_user.user["Gabri"]: Creating...
aws_iam_user.user["jinp"]: Creating...
aws_iam_user.user["jinp"]: Creation complete after 3s [id=jinp]
aws_iam_user.user["Gabri"]: Creation complete after 3s [id=Gabri]
aws_iam_user.user["Gabrile"]: Destruction complete after 3s
aws_iam_user.user["jinpie"]: Destruction complete after 3s

Apply complete! Resources: 2 added, 0 changed, 2 destroyed.

Outputs:

instance_ids = [
  "i-0dd6f8c5547141e7e",
  "i-07963daff9ba9cda7",
  "i-03213c68fdd37fc79",
  "i-06d02f8059654f022",
]
instance_public_ips = [
  "13.212.78.249",
  "13.212.90.37",
  "13.229.110.19",
  "13.212.61.145",
]
server_id_ip = [
  "Server with ID: i-0dd6f8c5547141e7e has Public IP of 13.212.78.249",
  "Server with ID: i-07963daff9ba9cda7 has Public IP of 13.212.90.37",
  "Server with ID: i-03213c68fdd37fc79 has Public IP of 13.229.110.19",
  "Server with ID: i-06d02f8059654f022 has Public IP of 13.212.61.145",
]
server_id_map = {
  "i-03213c68fdd37fc79" = "13.229.110.19"
  "i-06d02f8059654f022" = "13.212.61.145"
  "i-07963daff9ba9cda7" = "13.212.90.37"
  "i-0dd6f8c5547141e7e" = "13.212.78.249"
}
users_unique_id_arn = [
  "UserID: AIDASQLXXATHPJ4TWM5L7 has ARN: arn:aws:iam::172586632398:user/Brice",
  "UserID: AIDASQLXXATHIGBQPNKKP has ARN: arn:aws:iam::172586632398:user/Gabri",
  "UserID: AIDASQLXXATHG3EGPTS6V has ARN: arn:aws:iam::172586632398:user/jinp",
  "UserID: AIDASQLXXATHOCIFWYRJM has ARN: arn:aws:iam::172586632398:user/raju12@bharathkumaraju.com",
  "UserID: AIDASQLXXATHP4E4DRXVW has ARN: arn:aws:iam::172586632398:user/raju13@bharathkumaraju.com",
  "UserID: AIDASQLXXATHCL32SH2NB has ARN: arn:aws:iam::172586632398:user/raju14@bharathkumaraju.com",
  "UserID: AIDASQLXXATHORWDN6FL7 has ARN: arn:aws:iam::172586632398:user/raju15@bharathkumaraju.com",
  "UserID: AIDASQLXXATHBD4ZCWTH4 has ARN: arn:aws:iam::172586632398:user/raju16@bharathkumaraju.com",
  "UserID: AIDASQLXXATHNJLSAA2UK has ARN: arn:aws:iam::172586632398:user/raju17@bharathkumaraju.com",
  "UserID: AIDASQLXXATHG3HUA7JR7 has ARN: arn:aws:iam::172586632398:user/raju18@bharathkumaraju.com",
  "UserID: AIDASQLXXATHCV2IMWCHV has ARN: arn:aws:iam::172586632398:user/raju19@bharathkumaraju.com",
  "UserID: AIDASQLXXATHKVZOZLXWL has ARN: arn:aws:iam::172586632398:user/roopa",
]
users_unique_id_name_map = {
  "AIDASQLXXATHBD4ZCWTH4" = "raju16@bharathkumaraju.com"
  "AIDASQLXXATHCL32SH2NB" = "raju14@bharathkumaraju.com"
  "AIDASQLXXATHCV2IMWCHV" = "raju19@bharathkumaraju.com"
  "AIDASQLXXATHG3EGPTS6V" = "jinp"
  "AIDASQLXXATHG3HUA7JR7" = "raju18@bharathkumaraju.com"
  "AIDASQLXXATHIGBQPNKKP" = "Gabri"
  "AIDASQLXXATHKVZOZLXWL" = "roopa"
  "AIDASQLXXATHNJLSAA2UK" = "raju17@bharathkumaraju.com"
  "AIDASQLXXATHOCIFWYRJM" = "raju12@bharathkumaraju.com"
  "AIDASQLXXATHORWDN6FL7" = "raju15@bharathkumaraju.com"
  "AIDASQLXXATHP4E4DRXVW" = "raju13@bharathkumaraju.com"
  "AIDASQLXXATHPJ4TWM5L7" = "Brice"
}
bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in %


bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in % terraform destroy -auto-approve
aws_iam_user.user["raju19@bharathkumaraju.com"]: Destroying... [id=raju19@bharathkumaraju.com]
aws_iam_user.user["roopa"]: Destroying... [id=roopa]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Destroying... [id=raju18@bharathkumaraju.com]
aws_iam_user.user["jinp"]: Destroying... [id=jinp]
aws_iam_user.user["Brice"]: Destroying... [id=Brice]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Destroying... [id=raju16@bharathkumaraju.com]
aws_iam_user.user["raju13@bharathkumaraju.com"]: Destroying... [id=raju13@bharathkumaraju.com]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Destroying... [id=raju17@bharathkumaraju.com]
aws_instance.servers[1]: Destroying... [id=i-07963daff9ba9cda7]
aws_instance.servers[2]: Destroying... [id=i-03213c68fdd37fc79]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Destruction complete after 2s
aws_iam_user.user["raju13@bharathkumaraju.com"]: Destruction complete after 2s
aws_iam_user.user["roopa"]: Destruction complete after 2s
aws_iam_user.user["jinp"]: Destruction complete after 2s
aws_iam_user.user["raju19@bharathkumaraju.com"]: Destruction complete after 2s
aws_iam_user.user["raju16@bharathkumaraju.com"]: Destruction complete after 2s
aws_iam_user.user["Gabri"]: Destroying... [id=Gabri]
aws_instance.servers[0]: Destroying... [id=i-0dd6f8c5547141e7e]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Destruction complete after 2s
aws_iam_user.user["raju15@bharathkumaraju.com"]: Destroying... [id=raju15@bharathkumaraju.com]
aws_iam_user.user["Brice"]: Destruction complete after 2s
aws_iam_user.user["raju12@bharathkumaraju.com"]: Destroying... [id=raju12@bharathkumaraju.com]
aws_instance.servers[3]: Destroying... [id=i-06d02f8059654f022]
aws_iam_user.user["raju14@bharathkumaraju.com"]: Destroying... [id=raju14@bharathkumaraju.com]
aws_iam_user.user["Gabri"]: Destruction complete after 2s
aws_iam_user.user["raju12@bharathkumaraju.com"]: Destruction complete after 2s
aws_iam_user.user["raju15@bharathkumaraju.com"]: Destruction complete after 3s
aws_iam_user.user["raju14@bharathkumaraju.com"]: Destruction complete after 3s
aws_instance.servers[1]: Still destroying... [id=i-07963daff9ba9cda7, 10s elapsed]
aws_instance.servers[2]: Still destroying... [id=i-03213c68fdd37fc79, 10s elapsed]
aws_instance.servers[0]: Still destroying... [id=i-0dd6f8c5547141e7e, 10s elapsed]
aws_instance.servers[3]: Still destroying... [id=i-06d02f8059654f022, 10s elapsed]
aws_instance.servers[2]: Still destroying... [id=i-03213c68fdd37fc79, 20s elapsed]
aws_instance.servers[1]: Still destroying... [id=i-07963daff9ba9cda7, 20s elapsed]
aws_instance.servers[0]: Still destroying... [id=i-0dd6f8c5547141e7e, 20s elapsed]
aws_instance.servers[3]: Still destroying... [id=i-06d02f8059654f022, 20s elapsed]
aws_instance.servers[2]: Still destroying... [id=i-03213c68fdd37fc79, 30s elapsed]
aws_instance.servers[1]: Still destroying... [id=i-07963daff9ba9cda7, 30s elapsed]
aws_instance.servers[0]: Still destroying... [id=i-0dd6f8c5547141e7e, 30s elapsed]
aws_instance.servers[3]: Still destroying... [id=i-06d02f8059654f022, 30s elapsed]
aws_instance.servers[1]: Still destroying... [id=i-07963daff9ba9cda7, 40s elapsed]
aws_instance.servers[2]: Still destroying... [id=i-03213c68fdd37fc79, 40s elapsed]
aws_instance.servers[2]: Destruction complete after 40s
aws_instance.servers[0]: Still destroying... [id=i-0dd6f8c5547141e7e, 40s elapsed]
aws_instance.servers[3]: Destruction complete after 40s
aws_instance.servers[0]: Destruction complete after 41s
aws_instance.servers[1]: Still destroying... [id=i-07963daff9ba9cda7, 50s elapsed]
aws_instance.servers[1]: Still destroying... [id=i-07963daff9ba9cda7, 1m0s elapsed]
aws_instance.servers[1]: Destruction complete after 1m0s

Destroy complete! Resources: 16 destroyed.
bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in %

