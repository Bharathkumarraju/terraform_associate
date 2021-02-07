bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in % terraform apply -auto-approve
aws_iam_user.user["raju16@bharathkumaraju.com"]: Refreshing state... [id=raju16@bharathkumaraju.com]
aws_iam_user.user["raju13@bharathkumaraju.com"]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Refreshing state... [id=raju19@bharathkumaraju.com]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Refreshing state... [id=raju18@bharathkumaraju.com]
aws_iam_user.user["roopa"]: Refreshing state... [id=roopa]
aws_iam_user.user["raju14@bharathkumaraju.com"]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_instance.servers[1]: Refreshing state... [id=i-07963daff9ba9cda7]
aws_instance.servers[3]: Refreshing state... [id=i-06d02f8059654f022]
aws_instance.servers[0]: Refreshing state... [id=i-0dd6f8c5547141e7e]
aws_instance.servers[2]: Refreshing state... [id=i-03213c68fdd37fc79]
aws_iam_user.user["Brice"]: Refreshing state... [id=Brice]
aws_iam_user.user["Gabrile"]: Refreshing state... [id=Gabrile]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Refreshing state... [id=raju17@bharathkumaraju.com]
aws_iam_user.user["jinpie"]: Refreshing state... [id=jinpie]
aws_iam_user.user["raju15@bharathkumaraju.com"]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Refreshing state... [id=raju12@bharathkumaraju.com]

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
bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in %




bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in % terraform apply -auto-approve
aws_iam_user.user["raju19@bharathkumaraju.com"]: Refreshing state... [id=raju19@bharathkumaraju.com]
aws_iam_user.user["raju15@bharathkumaraju.com"]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user["jinpie"]: Refreshing state... [id=jinpie]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Refreshing state... [id=raju17@bharathkumaraju.com]
aws_iam_user.user["Gabrile"]: Refreshing state... [id=Gabrile]
aws_iam_user.user["raju13@bharathkumaraju.com"]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_instance.servers[2]: Refreshing state... [id=i-03213c68fdd37fc79]
aws_instance.servers[0]: Refreshing state... [id=i-0dd6f8c5547141e7e]
aws_instance.servers[3]: Refreshing state... [id=i-06d02f8059654f022]
aws_instance.servers[1]: Refreshing state... [id=i-07963daff9ba9cda7]
aws_iam_user.user["raju14@bharathkumaraju.com"]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user["Brice"]: Refreshing state... [id=Brice]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Refreshing state... [id=raju18@bharathkumaraju.com]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Refreshing state... [id=raju16@bharathkumaraju.com]
aws_iam_user.user["roopa"]: Refreshing state... [id=roopa]

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
bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in %


