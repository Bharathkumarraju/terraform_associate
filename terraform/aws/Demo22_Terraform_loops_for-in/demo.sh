With this for in loop we can not create resources. But we can create lists or maps.
It is really useful for some outputs and to prepare for some map to create some resources.




      + id            = (known after apply)
      + name          = "Gabrile"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user["hanuman"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "hanuman"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_iam_user.user["jinpie"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "jinpie"
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

  # aws_iam_user.user["roopa"] will be created
  + resource "aws_iam_user" "user" {
      + arn           = (known after apply)
      + force_destroy = false
      + id            = (known after apply)
      + name          = "roopa"
      + path          = "/"
      + unique_id     = (known after apply)
    }

  # aws_instance.servers[0] will be created
  + resource "aws_instance" "servers" {
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
          + "Name"  = "Server-1"
          + "Owner" = "Bharath"
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

  # aws_instance.servers[1] will be created
  + resource "aws_instance" "servers" {
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
          + "Name"  = "Server-2"
          + "Owner" = "Bharath"
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

  # aws_instance.servers[2] will be created
  + resource "aws_instance" "servers" {
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
          + "Name"  = "Server-3"
          + "Owner" = "Bharath"
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

  # aws_instance.servers[3] will be created
  + resource "aws_instance" "servers" {
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
          + "Name"  = "Server-4"
          + "Owner" = "Bharath"
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

Plan: 17 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + instance_ids        = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]
  + instance_public_ips = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in % terraform apply -auto-approve
aws_iam_user.user["Brice"]: Creating...
aws_iam_user.user["raju17@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju12@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju18@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju15@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju14@bharathkumaraju.com"]: Creating...
aws_instance.servers[3]: Creating...
aws_instance.servers[0]: Creating...
aws_instance.servers[2]: Creating...
aws_instance.servers[1]: Creating...
aws_iam_user.user["raju15@bharathkumaraju.com"]: Creation complete after 4s [id=raju15@bharathkumaraju.com]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Creation complete after 4s [id=raju18@bharathkumaraju.com]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Creation complete after 4s [id=raju17@bharathkumaraju.com]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju14@bharathkumaraju.com"]: Creation complete after 4s [id=raju14@bharathkumaraju.com]
aws_iam_user.user["Gabrile"]: Creating...
aws_iam_user.user["roopa"]: Creating...
aws_iam_user.user["jinpie"]: Creating...
aws_iam_user.user["Brice"]: Creation complete after 4s [id=Brice]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Creation complete after 4s [id=raju12@bharathkumaraju.com]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Creating...
aws_iam_user.user["hanuman"]: Creating...
aws_iam_user.user["raju13@bharathkumaraju.com"]: Creating...
aws_iam_user.user["raju16@bharathkumaraju.com"]: Creation complete after 2s [id=raju16@bharathkumaraju.com]
aws_iam_user.user["roopa"]: Creation complete after 2s [id=roopa]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Creation complete after 2s [id=raju19@bharathkumaraju.com]
aws_iam_user.user["Gabrile"]: Creation complete after 2s [id=Gabrile]
aws_iam_user.user["jinpie"]: Creation complete after 2s [id=jinpie]
aws_instance.servers[3]: Still creating... [10s elapsed]
aws_instance.servers[0]: Still creating... [10s elapsed]
aws_instance.servers[2]: Still creating... [10s elapsed]
aws_instance.servers[1]: Still creating... [10s elapsed]
aws_iam_user.user["raju13@bharathkumaraju.com"]: Creation complete after 7s [id=raju13@bharathkumaraju.com]
aws_instance.servers[1]: Creation complete after 15s [id=i-07963daff9ba9cda7]
aws_instance.servers[3]: Creation complete after 15s [id=i-06d02f8059654f022]
aws_instance.servers[0]: Creation complete after 15s [id=i-0dd6f8c5547141e7e]
aws_instance.servers[2]: Creation complete after 15s [id=i-03213c68fdd37fc79]

bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in % terraform apply -auto-approve
aws_instance.servers[3]: Refreshing state... [id=i-06d02f8059654f022]
aws_instance.servers[2]: Refreshing state... [id=i-03213c68fdd37fc79]
aws_iam_user.user["roopa"]: Refreshing state... [id=roopa]
aws_iam_user.user["raju16@bharathkumaraju.com"]: Refreshing state... [id=raju16@bharathkumaraju.com]
aws_iam_user.user["raju17@bharathkumaraju.com"]: Refreshing state... [id=raju17@bharathkumaraju.com]
aws_iam_user.user["Brice"]: Refreshing state... [id=Brice]
aws_iam_user.user["jinpie"]: Refreshing state... [id=jinpie]
aws_instance.servers[1]: Refreshing state... [id=i-07963daff9ba9cda7]
aws_iam_user.user["Gabrile"]: Refreshing state... [id=Gabrile]
aws_instance.servers[0]: Refreshing state... [id=i-0dd6f8c5547141e7e]
aws_iam_user.user["raju18@bharathkumaraju.com"]: Refreshing state... [id=raju18@bharathkumaraju.com]
aws_iam_user.user["raju14@bharathkumaraju.com"]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user["raju12@bharathkumaraju.com"]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user["raju13@bharathkumaraju.com"]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user["raju19@bharathkumaraju.com"]: Refreshing state... [id=raju19@bharathkumaraju.com]
aws_iam_user.user["raju15@bharathkumaraju.com"]: Refreshing state... [id=raju15@bharathkumaraju.com]

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
bharathkumarraju@R77-NB193 Demo22_Terraform_loops_for-in %

