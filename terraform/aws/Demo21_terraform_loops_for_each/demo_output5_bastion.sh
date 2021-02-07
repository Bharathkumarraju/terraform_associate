bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each % terraform plan
aws_iam_user.user["raju13@bharathkumaraju.com"]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Refreshing state... [id=raju18@bharathkumaraju.com]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Refreshing state... [id=raju16@bharathkumaraju.com]
aws_instance.bharath_server["Dev"]: Refreshing state... [id=i-0f418d45f6240d45c]
aws_instance.bharath_server["Prod"]: Refreshing state... [id=i-0dfb498602d2f11bb]
aws_instance.bharath_server["Staging"]: Refreshing state... [id=i-092182e75ea12f82d]
aws_instance.server["app"]: Refreshing state... [id=i-06cdf34a94614757d]
aws_instance.server["web"]: Refreshing state... [id=i-059c691ffefd0fc84]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Refreshing state... [id=raju19@bharathkumaraju.com]
aws_iam_user.user["raju14@bharathkumaraju.com"]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user["raju15@bharathkumaraju.com"]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Refreshing state... [id=raju17@bharathkumaraju.com]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.bastion_server["bastion"] will be created
  + resource "aws_instance" "bastion_server" {
      + ami                          = "ami-00b8d9cb8a7161e41"
      + arn                          = (known after apply)
      + associate_public_ip_address  = (known after apply)
      + availability_zone            = (known after apply)
      + cpu_core_count               = (known after apply)
      + cpu_threads_per_core         = (known after apply)
      + get_password_data            = false
      + host_id                      = (known after apply)
      + id                           = (known after apply)
      + instance_state               = (known after apply)
      + instance_type                = "t3.micro"
      + ipv6_address_count           = (known after apply)
      + ipv6_addresses               = (known after apply)
      + key_name                     = (known after apply)
      + outpost_arn                  = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      + primary_network_interface_id = (known after apply)
      + private_dns                  = (known after apply)
      + private_ip                   = (known after apply)
      + public_dns                   = (known after apply)
      + public_ip                    = (known after apply)
      + secondary_private_ips        = (known after apply)
      + security_groups              = (known after apply)
      + source_dest_check            = true
      + subnet_id                    = (known after apply)
      + tags                         = {
          + "Name"  = "Bastion server"
          + "Owner" = "Bharath Raju"
        }
      + tenancy                      = (known after apply)
      + vpc_security_group_ids       = (known after apply)

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + bastion_public_ip = (known after apply)

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each %

bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each % terraform apply -auto-approve
aws_iam_user.user["raju14@bharathkumaraju.com"]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Refreshing state... [id=raju19@bharathkumaraju.com]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user["raju13@bharathkumaraju.com"]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_instance.server["web"]: Refreshing state... [id=i-059c691ffefd0fc84]
aws_instance.server["app"]: Refreshing state... [id=i-06cdf34a94614757d]
aws_instance.bharath_server["Prod"]: Refreshing state... [id=i-0dfb498602d2f11bb]
aws_instance.bharath_server["Staging"]: Refreshing state... [id=i-092182e75ea12f82d]
aws_instance.bharath_server["Dev"]: Refreshing state... [id=i-0f418d45f6240d45c]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Refreshing state... [id=raju18@bharathkumaraju.com]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Refreshing state... [id=raju17@bharathkumaraju.com]
aws_iam_user.user["raju15@bharathkumaraju.com"]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Refreshing state... [id=raju16@bharathkumaraju.com]
aws_instance.bastion_server["bastion"]: Creating...
aws_instance.bastion_server["bastion"]: Still creating... [10s elapsed]
aws_instance.bastion_server["bastion"]: Creation complete after 13s [id=i-0fa444b805b624b69]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.

Outputs:

app_instance_id = "i-06cdf34a94614757d"
bastion_public_ip = "13.229.213.70"
instance_ids = [
  "i-0f418d45f6240d45c",
  "i-0dfb498602d2f11bb",
  "i-092182e75ea12f82d",
]
instance_public_ips = [
  "13.212.9.208",
  "54.251.29.121",
  "13.250.17.64",
]
prod_instace_id = "i-0dfb498602d2f11bb"
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
web_and_app_instance_ids = [
  "i-06cdf34a94614757d",
  "i-059c691ffefd0fc84",
]
web_instance_id = "i-059c691ffefd0fc84"
bharathkumarraju@R77-NB193 Demo21_terraform_loops_for_each %

