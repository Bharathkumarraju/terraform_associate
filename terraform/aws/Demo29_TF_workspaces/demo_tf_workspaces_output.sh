bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform workspace show
default
bharathkumarraju@R77-NB193 Demo29_TF_workspaces %

bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform workspace list
* default

bharathkumarraju@R77-NB193 Demo29_TF_workspaces %

bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform apply
aws_security_group.web: Refreshing state... [id=sg-07ab3d93856038687]
aws_instance.web: Refreshing state... [id=i-0f6ace5063bc6d696]
aws_eip.web: Refreshing state... [id=eipalloc-0edb6d0eca41d6cbd]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

web_public_ip = "18.135.238.86"
bharathkumarraju@R77-NB193 Demo29_TF_workspaces %


bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform workspace new test1
Created and switched to workspace "test1"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform workspace list
  default
* test1

bharathkumarraju@R77-NB193 Demo29_TF_workspaces %

bharathkumarraju@R77-NB193 autoappl % aws s3 ls s3://bharathkumar-tf-remote-state/
                           PRE dev/
                           PRE env:/
                           PRE prod/
bharathkumarraju@R77-NB193 autoappl % aws s3 ls s3://bharathkumar-tf-remote-state/env:/
                           PRE test1/
bharathkumarraju@R77-NB193 autoappl % aws s3 ls s3://bharathkumar-tf-remote-state/env:/test1/
                           PRE prod/
bharathkumarraju@R77-NB193 autoappl % aws s3 ls s3://bharathkumar-tf-remote-state/env:/test1/prod/
2021-02-15 19:31:36       9691 terraform.tfstate
bharathkumarraju@R77-NB193 autoappl %



bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform apply -auto-approve
aws_security_group.web: Creating...
aws_security_group.web: Still creating... [10s elapsed]
aws_security_group.web: Creation complete after 10s [id=sg-05f245f0b29a4c0e0]
aws_instance.web: Creating...
aws_instance.web: Still creating... [10s elapsed]
aws_instance.web: Still creating... [20s elapsed]
aws_instance.web: Creation complete after 26s [id=i-0035a04a3fe051808]
aws_eip.web: Creating...
aws_eip.web: Creation complete after 6s [id=eipalloc-0ecc04a89e1a5e190]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

web_public_ip = "18.135.118.244"
bharathkumarraju@R77-NB193 Demo29_TF_workspaces %




bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform destroy -auto-approve
aws_eip.web: Destroying... [id=eipalloc-0edb6d0eca41d6cbd]
aws_eip.web: Destruction complete after 5s
aws_instance.web: Destroying... [id=i-0f6ace5063bc6d696]
aws_instance.web: Still destroying... [id=i-0f6ace5063bc6d696, 10s elapsed]
aws_instance.web: Still destroying... [id=i-0f6ace5063bc6d696, 20s elapsed]
aws_instance.web: Still destroying... [id=i-0f6ace5063bc6d696, 30s elapsed]
aws_instance.web: Destruction complete after 37s
aws_security_group.web: Destroying... [id=sg-07ab3d93856038687]
aws_security_group.web: Destruction complete after 3s

Destroy complete! Resources: 3 destroyed.
bharathkumarraju@R77-NB193 Demo29_TF_workspaces %


bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform workspace new test2
Created and switched to workspace "test2"!

You're now on a new, empty workspace. Workspaces isolate their state,
so if you run "terraform plan" Terraform will not see any existing state
for this configuration.
bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform plan

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_eip.web will be created
  + resource "aws_eip" "web" {
      + allocation_id        = (known after apply)
      + association_id       = (known after apply)
      + carrier_ip           = (known after apply)
      + customer_owned_ip    = (known after apply)
      + domain               = (known after apply)
      + id                   = (known after apply)
      + instance             = (known after apply)
      + network_border_group = (known after apply)
      + network_interface    = (known after apply)
      + private_dns          = (known after apply)
      + private_ip           = (known after apply)
      + public_dns           = (known after apply)
      + public_ip            = (known after apply)
      + public_ipv4_pool     = (known after apply)
      + tags                 = {
          + "Name"  = "PROD WebServer EIP - test2"
          + "Owner" = "BD"
        }
      + vpc                  = (known after apply)
    }

  # aws_instance.web will be created
  + resource "aws_instance" "web" {
      + ami                          = "ami-098828924dc89ea4a"
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
          + "Name"  = "PROD WebServer - test2"
          + "Owner" = "BD"
        }
      + tenancy                      = (known after apply)
      + user_data                    = "8a293a30d7249bf3ed65acd9bdac5c5a2c8eb74f"
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

  # aws_security_group.web will be created
  + resource "aws_security_group" "web" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 0
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "-1"
              + security_groups  = []
              + self             = false
              + to_port          = 0
            },
        ]
      + id                     = (known after apply)
      + ingress                = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
            },
        ]
      + name                   = (known after apply)
      + name_prefix            = "WebServer SG"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"  = "Web Server SecurityGroup - test2"
          + "Owner" = "BD"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + web_public_ip = (known after apply)

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo29_TF_workspaces %


bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform apply -auto-approve
aws_security_group.web: Creating...
aws_security_group.web: Still creating... [10s elapsed]
aws_security_group.web: Creation complete after 11s [id=sg-0a44a9d2b913aca41]
aws_instance.web: Creating...
aws_instance.web: Still creating... [10s elapsed]
aws_instance.web: Still creating... [20s elapsed]
aws_instance.web: Creation complete after 21s [id=i-02d69232824160073]
aws_eip.web: Creating...
aws_eip.web: Creation complete after 6s [id=eipalloc-0ed79eee88415353e]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

web_public_ip = "18.135.234.83"
bharathkumarraju@R77-NB193 Demo29_TF_workspaces %



bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform destroy -auto-approve
aws_eip.web: Destroying... [id=eipalloc-0ed79eee88415353e]
aws_eip.web: Destruction complete after 5s
aws_instance.web: Destroying... [id=i-02d69232824160073]
aws_instance.web: Still destroying... [id=i-02d69232824160073, 10s elapsed]
aws_instance.web: Still destroying... [id=i-02d69232824160073, 20s elapsed]
aws_instance.web: Still destroying... [id=i-02d69232824160073, 30s elapsed]
aws_instance.web: Still destroying... [id=i-02d69232824160073, 40s elapsed]
aws_instance.web: Still destroying... [id=i-02d69232824160073, 50s elapsed]
aws_instance.web: Still destroying... [id=i-02d69232824160073, 1m0s elapsed]
aws_instance.web: Still destroying... [id=i-02d69232824160073, 1m10s elapsed]
aws_instance.web: Still destroying... [id=i-02d69232824160073, 1m20s elapsed]
aws_instance.web: Destruction complete after 1m22s
aws_security_group.web: Destroying... [id=sg-0a44a9d2b913aca41]
aws_security_group.web: Destruction complete after 3s

Destroy complete! Resources: 3 destroyed.
bharathkumarraju@R77-NB193 Demo29_TF_workspaces %


bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform workspace select default
Switched to workspace "default".
bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform workspace delete test1
Deleted workspace "test1"!
bharathkumarraju@R77-NB193 Demo29_TF_workspaces % terraform workspace delete test2
Deleted workspace "test2"!
bharathkumarraju@R77-NB193 Demo29_TF_workspaces %



