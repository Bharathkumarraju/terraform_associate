bharathkumarraju@R77-NB193 Layer2-Web % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.terraform_remote_state.vpc: Refreshing state...
data.aws_ami.latest_amazon_linux: Refreshing state...

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

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
      + subnet_id                    = "subnet-0072e9cce123b0b41"
      + tags                         = {
          + "Name"  = "Dev-Web Server terraform"
          + "Owner" = "Bharath raju"
        }
      + tenancy                      = (known after apply)
      + user_data                    = "0fd669f554aec95212e607528c9f6e42d18313a2"
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
      + description            = "SG for web server"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "allow all ports"
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
              + description      = "allow port 443"
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
              + description      = "allow port 80"
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
            },
          + {
              + cidr_blocks      = [
                  + "10.0.0.0/16",
                ]
              + description      = ""
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
            },
        ]
      + name                   = "Dev-webserver-SG"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"  = "Dev-WebServer SG"
          + "Owner" = "Bharath raju"
        }
      + vpc_id                 = "vpc-07cba897c0f666d2a"
    }

Plan: 2 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Layer2-Web %

bharathkumarraju@R77-NB193 Layer2-Web % terraform apply -auto-approve
data.terraform_remote_state.vpc: Refreshing state...
data.aws_ami.latest_amazon_linux: Refreshing state...
aws_security_group.web: Creating...
aws_security_group.web: Creation complete after 9s [id=sg-03e1307eddd9dac68]
aws_instance.web: Creating...
aws_instance.web: Still creating... [10s elapsed]
aws_instance.web: Still creating... [20s elapsed]
aws_instance.web: Creation complete after 22s [id=i-07b0d6fd377720ea8]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

web_server_public_ip = 3.9.175.181
bharathkumarraju@R77-NB193 Layer2-Web %


bharathkumarraju@R77-NB193 Layer2-Web % terraform destroy -auto-approve
data.terraform_remote_state.vpc: Refreshing state...
data.aws_ami.latest_amazon_linux: Refreshing state...
aws_security_group.web: Refreshing state... [id=sg-03e1307eddd9dac68]
aws_instance.web: Refreshing state... [id=i-07b0d6fd377720ea8]
aws_instance.web: Destroying... [id=i-07b0d6fd377720ea8]
aws_instance.web: Still destroying... [id=i-07b0d6fd377720ea8, 10s elapsed]
aws_instance.web: Still destroying... [id=i-07b0d6fd377720ea8, 20s elapsed]
aws_instance.web: Still destroying... [id=i-07b0d6fd377720ea8, 30s elapsed]
aws_instance.web: Still destroying... [id=i-07b0d6fd377720ea8, 40s elapsed]
aws_instance.web: Destruction complete after 46s
aws_security_group.web: Destroying... [id=sg-03e1307eddd9dac68]
aws_security_group.web: Destruction complete after 3s

Destroy complete! Resources: 2 destroyed.
bharathkumarraju@R77-NB193 Layer2-Web %
