bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in % terraform plan
aws_iam_user.user["raju13@bharathkumaraju.com"]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user["Brice"]: Refreshing state... [id=Brice]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Refreshing state... [id=raju16@bharathkumaraju.com]
aws_iam_user.user["raju15@bharathkumaraju.com"]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Refreshing state... [id=raju18@bharathkumaraju.com]
aws_instance.servers[2]: Refreshing state... [id=i-03213c68fdd37fc79]
aws_instance.servers[1]: Refreshing state... [id=i-07963daff9ba9cda7]
aws_instance.servers[3]: Refreshing state... [id=i-06d02f8059654f022]
aws_instance.servers[0]: Refreshing state... [id=i-0dd6f8c5547141e7e]
aws_iam_user.user["roopa"]: Refreshing state... [id=roopa]
aws_iam_user.user["raju14@bharathkumaraju.com"]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Refreshing state... [id=raju17@bharathkumaraju.com]
aws_iam_user.user["Gabri"]: Refreshing state... [id=Gabri]
aws_iam_user.user["jinp"]: Refreshing state... [id=jinp]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Refreshing state... [id=raju19@bharathkumaraju.com]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:

Terraform will perform the following actions:

Plan: 0 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + users_unique_id_name_custom = {
      + AIDASQLXXATHG3EGPTS6V = "jinp"
      + AIDASQLXXATHIGBQPNKKP = "Gabri"
      + AIDASQLXXATHKVZOZLXWL = "roopa"
      + AIDASQLXXATHPJ4TWM5L7 = "Brice"
    }

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in % terraform apply -auto-approve
aws_iam_user.user["raju19@bharathkumaraju.com"]: Refreshing state... [id=raju19@bharathkumaraju.com]
aws_iam_user.user["raju14@bharathkumaraju.com"]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user["Gabri"]: Refreshing state... [id=Gabri]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user["raju15@bharathkumaraju.com"]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user["jinp"]: Refreshing state... [id=jinp]
aws_instance.servers[0]: Refreshing state... [id=i-0dd6f8c5547141e7e]
aws_instance.servers[1]: Refreshing state... [id=i-07963daff9ba9cda7]
aws_instance.servers[3]: Refreshing state... [id=i-06d02f8059654f022]
aws_instance.servers[2]: Refreshing state... [id=i-03213c68fdd37fc79]
aws_iam_user.user["raju13@bharathkumaraju.com"]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user["roopa"]: Refreshing state... [id=roopa]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Refreshing state... [id=raju17@bharathkumaraju.com]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Refreshing state... [id=raju16@bharathkumaraju.com]
aws_iam_user.user["Brice"]: Refreshing state... [id=Brice]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Refreshing state... [id=raju18@bharathkumaraju.com]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

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
users_unique_id_name_custom = {
  "AIDASQLXXATHG3EGPTS6V" = "jinp"
  "AIDASQLXXATHIGBQPNKKP" = "Gabri"
  "AIDASQLXXATHKVZOZLXWL" = "roopa"
  "AIDASQLXXATHPJ4TWM5L7" = "Brice"
}
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