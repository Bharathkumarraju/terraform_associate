bharathkumarraju@R77-NB193 Demo23_multiplt_Aws_regions % terraform init

Initializing the backend...

Initializing provider plugins...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 3.27"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumarraju@R77-NB193 Demo23_multiplt_Aws_regions %




bharathkumarraju@R77-NB193 Demo23_multiplt_Aws_regions % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.aws_ami.asia_latest_ubuntu20: Refreshing state...
data.aws_ami.latest_ubuntu20: Refreshing state...
data.aws_ami.europe_latest_ubuntu20: Refreshing state...

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.bk_asia_server will be created
  + resource "aws_instance" "bk_asia_server" {
      + ami                          = "ami-09a6a7e49bd29554b"
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
          + "Name" = "Bk asia server"
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

  # aws_instance.bk_europe_server will be created
  + resource "aws_instance" "bk_europe_server" {
      + ami                          = "ami-022e8cc8f0d3c52fd"
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
          + "Name" = "Bk europe server"
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

  # aws_instance.bk_server will be created
  + resource "aws_instance" "bk_server" {
      + ami                          = "ami-03d315ad33b9d49c4"
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
          + "Name" = "Bk server"
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

Plan: 3 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo23_multiplt_Aws_regions %

bharathkumarraju@R77-NB193 Demo23_multiplt_Aws_regions % terraform apply -auto-approve
data.aws_ami.asia_latest_ubuntu20: Refreshing state...
data.aws_ami.latest_ubuntu20: Refreshing state...
data.aws_ami.europe_latest_ubuntu20: Refreshing state...
aws_instance.bk_asia_server: Creating...
aws_instance.bk_server: Creating...
aws_instance.bk_europe_server: Creating...
aws_instance.bk_asia_server: Still creating... [10s elapsed]
aws_instance.bk_server: Still creating... [10s elapsed]
aws_instance.bk_europe_server: Still creating... [10s elapsed]
aws_instance.bk_asia_server: Creation complete after 15s [id=i-007b483957f5c6745]
aws_instance.bk_server: Still creating... [20s elapsed]
aws_instance.bk_europe_server: Still creating... [20s elapsed]
aws_instance.bk_server: Creation complete after 21s [id=i-024dee588d754ccbc]
aws_instance.bk_europe_server: Creation complete after 28s [id=i-073ee1f4818c05632]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 Demo23_multiplt_Aws_regions %


bharathkumarraju@R77-NB193 Demo23_multiplt_Aws_regions % terraform destroy -auto-approve
data.aws_ami.asia_latest_ubuntu20: Refreshing state...
aws_instance.bk_asia_server: Refreshing state... [id=i-007b483957f5c6745]
data.aws_ami.latest_ubuntu20: Refreshing state...
data.aws_ami.europe_latest_ubuntu20: Refreshing state...
aws_instance.bk_server: Refreshing state... [id=i-024dee588d754ccbc]
aws_instance.bk_europe_server: Refreshing state... [id=i-073ee1f4818c05632]
aws_instance.bk_asia_server: Destroying... [id=i-007b483957f5c6745]
aws_instance.bk_server: Destroying... [id=i-024dee588d754ccbc]
aws_instance.bk_europe_server: Destroying... [id=i-073ee1f4818c05632]
aws_instance.bk_asia_server: Still destroying... [id=i-007b483957f5c6745, 10s elapsed]
aws_instance.bk_server: Still destroying... [id=i-024dee588d754ccbc, 10s elapsed]
aws_instance.bk_europe_server: Still destroying... [id=i-073ee1f4818c05632, 10s elapsed]
aws_instance.bk_asia_server: Still destroying... [id=i-007b483957f5c6745, 20s elapsed]
aws_instance.bk_server: Still destroying... [id=i-024dee588d754ccbc, 20s elapsed]
aws_instance.bk_europe_server: Still destroying... [id=i-073ee1f4818c05632, 20s elapsed]
aws_instance.bk_asia_server: Still destroying... [id=i-007b483957f5c6745, 30s elapsed]
aws_instance.bk_asia_server: Destruction complete after 31s
aws_instance.bk_server: Still destroying... [id=i-024dee588d754ccbc, 30s elapsed]
aws_instance.bk_europe_server: Still destroying... [id=i-073ee1f4818c05632, 30s elapsed]
aws_instance.bk_server: Still destroying... [id=i-024dee588d754ccbc, 40s elapsed]
aws_instance.bk_europe_server: Still destroying... [id=i-073ee1f4818c05632, 40s elapsed]
aws_instance.bk_europe_server: Destruction complete after 49s
aws_instance.bk_server: Still destroying... [id=i-024dee588d754ccbc, 50s elapsed]
aws_instance.bk_server: Destruction complete after 57s

Destroy complete! Resources: 3 destroyed.
bharathkumarraju@R77-NB193 Demo23_multiplt_Aws_regions %


