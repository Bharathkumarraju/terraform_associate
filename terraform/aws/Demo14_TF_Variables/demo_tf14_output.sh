bharathkumarraju@R77-NB193 Demo14_TF_Variables % tfswitch
✔ 0.14.6 *recent
Switched terraform to version "0.14.6"
bharathkumarraju@R77-NB193 Demo14_TF_Variables % terraform init

Initializing the backend...

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v3.27.0...
- Installed hashicorp/aws v3.27.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumarraju@R77-NB193 Demo14_TF_Variables % terraform refresh
Empty or non-existent state file.

Refresh will do nothing. Refresh does not error or return an erroneous
exit status because many automation scripts use refresh, plan, then apply
and may not have a state file yet for the first run.

bharathkumarraju@R77-NB193 Demo14_TF_Variables % terraform plan

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
          + "Environment" = "Development"
          + "Name"        = "Development EIP for Web server built by terraform"
          + "Owner"       = "BHARATH"
          + "Project"     = "Bharaths-cloud"
        }
      + vpc                  = (known after apply)
    }

  # aws_instance.web will be created
  + resource "aws_instance" "web" {
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
      + key_name                     = (sensitive)
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
          + "Environment" = "Development"
          + "Name"        = "Development WebServer Built by Terraform"
          + "Owner"       = "BHARATH"
          + "Project"     = "Bharaths-cloud"
        }
      + tenancy                      = (known after apply)
      + user_data                    = "15a52b6e9b73c5d3db083404457d3a5fc224166a"
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
      + description            = "Security Group for my WebServer"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "Allow ALL ports"
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
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
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
      + name                   = "WebServer-SG"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Environment" = "Development"
          + "Name"        = "Development Webserver SG by Terraform"
          + "Owner"       = "BHARATH"
          + "Project"     = "Bharaths-cloud"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + instance_id       = (known after apply)
  + public_ip         = (known after apply)
  + security_group_id = (known after apply)

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo14_TF_Variables %



bharathkumarraju@R77-NB193 Demo14_TF_Variables % terraform apply -auto-approve
aws_security_group.web: Creating...
aws_security_group.web: Creation complete after 2s [id=sg-0746fe7559f52e8ae]
aws_instance.web: Creating...
aws_instance.web: Still creating... [10s elapsed]
aws_instance.web: Creation complete after 14s [id=i-01a44445d8f9bd618]
aws_eip.web: Creating...
aws_eip.web: Creation complete after 1s [id=eipalloc-0fea7cb8e6e7d1250]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

instance_id = "i-01a44445d8f9bd618"
public_ip = "54.255.226.142"
security_group_id = "sg-0746fe7559f52e8ae"
bharathkumarraju@R77-NB193 Demo14_TF_Variables %

bharathkumarraju@R77-NB193 Demo14_TF_Variables % terraform destroy -auto-approve
aws_eip.web: Destroying... [id=eipalloc-0fea7cb8e6e7d1250]
aws_eip.web: Destruction complete after 1s
aws_instance.web: Destroying... [id=i-01a44445d8f9bd618]
aws_instance.web: Still destroying... [id=i-01a44445d8f9bd618, 10s elapsed]
aws_instance.web: Still destroying... [id=i-01a44445d8f9bd618, 20s elapsed]
aws_instance.web: Still destroying... [id=i-01a44445d8f9bd618, 30s elapsed]
aws_instance.web: Still destroying... [id=i-01a44445d8f9bd618, 40s elapsed]
aws_instance.web: Still destroying... [id=i-01a44445d8f9bd618, 50s elapsed]
aws_instance.web: Still destroying... [id=i-01a44445d8f9bd618, 1m0s elapsed]
aws_instance.web: Still destroying... [id=i-01a44445d8f9bd618, 1m10s elapsed]
aws_instance.web: Still destroying... [id=i-01a44445d8f9bd618, 1m20s elapsed]
aws_instance.web: Destruction complete after 1m22s
aws_security_group.web: Destroying... [id=sg-0746fe7559f52e8ae]
aws_security_group.web: Destruction complete after 1s

Destroy complete! Resources: 3 destroyed.
bharathkumarraju@R77-NB193 Demo14_TF_Variables %
