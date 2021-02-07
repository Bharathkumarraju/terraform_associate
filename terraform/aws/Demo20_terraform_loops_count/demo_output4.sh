bharathkumarraju@R77-NB193 Demo20_terraform_loops_count % terraform plan
aws_iam_user.user[2]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user[0]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user[1]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user[3]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_instance.servers[0]: Refreshing state... [id=i-0f57768bb02789f93]
aws_instance.servers[3]: Refreshing state... [id=i-0648fff087da3f43f]
aws_instance.servers[1]: Refreshing state... [id=i-07ad1fbd197e29d26]
aws_instance.servers[2]: Refreshing state... [id=i-035ac6d6afb0f1129]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_iam_user.user[4] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "raju11@bharathkumaraju.com"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_instance.bastion_server[0] will be created
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
          + "Name"  = "Bastion Server"
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

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + bastion_public_ip = (known after apply)
  ~ iam_user_arn      = [
        # (3 unchanged elements hidden)
        "arn:aws:iam::172586632398:user/raju12@bharathkumaraju.com",
      + (known after apply),
    ]

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo20_terraform_loops_count %

bharathkumarraju@R77-NB193 Demo20_terraform_loops_count % terraform apply -auto-approve
aws_iam_user.user[0]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user[3]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user[2]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user[1]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_instance.servers[0]: Refreshing state... [id=i-0f57768bb02789f93]
aws_instance.servers[2]: Refreshing state... [id=i-035ac6d6afb0f1129]
aws_instance.servers[1]: Refreshing state... [id=i-07ad1fbd197e29d26]
aws_instance.servers[3]: Refreshing state... [id=i-0648fff087da3f43f]
aws_iam_user.user[4]: Creating...
aws_instance.bastion_server[0]: Creating...
aws_iam_user.user[4]: Creation complete after 2s [id=raju11@bharathkumaraju.com]
aws_instance.bastion_server[0]: Still creating... [10s elapsed]
aws_instance.bastion_server[0]: Creation complete after 12s [id=i-0947be21c67ed96f7]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

bastion_public_ip = "54.255.171.137"
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

