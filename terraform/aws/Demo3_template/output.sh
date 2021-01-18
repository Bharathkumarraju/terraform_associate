bharathkumarraju@R77-NB193 Demo2 % cd ../Demo3
bharathkumarraju@R77-NB193 Demo3 % clear
bharathkumarraju@R77-NB193 Demo3 % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

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
          + "Name"  = "Web server built by terraform"
          + "Owner" = "Bharath raju"
        }
      + tenancy                      = (known after apply)
      + user_data                    = "8bc939b7416a3bce2b5c0ddbdaf420a1b0ce9983"
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
              + description      = "allow port HTTP"
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
                  + "0.0.0.0/0",
                ]
              + description      = "allow port HTTPS"
              + from_port        = 443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 443
            },
        ]
      + name                   = "webserver-SG"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"  = "WebServer SG"
          + "Owner" = "Bharath raju"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo3 % terraform apply -auto-approve
aws_security_group.web: Creating...
aws_security_group.web: Creation complete after 3s [id=sg-062d3f4acdfa68eeb]
aws_instance.web: Creating...
aws_instance.web: Still creating... [10s elapsed]
aws_instance.web: Creation complete after 15s [id=i-039e0c199fdfd3476]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 Demo3 %

Hit Browser with public IP of instance like http://13.251.124.52/

-----------------------------------------------------------------------------------------------------------------------:


bharathkumarraju@R77-NB193 Demo3 % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

aws_security_group.web: Refreshing state... [id=sg-062d3f4acdfa68eeb]
aws_instance.web: Refreshing state... [id=i-039e0c199fdfd3476]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_instance.web will be updated in-place
  ~ resource "aws_instance" "web" {
        ami                          = "ami-00b8d9cb8a7161e41"
        arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-039e0c199fdfd3476"
        associate_public_ip_address  = true
        availability_zone            = "ap-southeast-1c"
        cpu_core_count               = 1
        cpu_threads_per_core         = 1
        disable_api_termination      = false
        ebs_optimized                = false
        get_password_data            = false
        hibernation                  = false
        id                           = "i-039e0c199fdfd3476"
        instance_state               = "running"
      ~ instance_type                = "t2.small" -> "t3.micro"
        ipv6_address_count           = 0
        ipv6_addresses               = []
        monitoring                   = false
        primary_network_interface_id = "eni-0114c16213efd55be"
        private_dns                  = "ip-172-31-47-81.ap-southeast-1.compute.internal"
        private_ip                   = "172.31.47.81"
        public_dns                   = "ec2-18-141-212-11.ap-southeast-1.compute.amazonaws.com"
        public_ip                    = "18.141.212.11"
        secondary_private_ips        = []
        security_groups              = [
            "webserver-SG",
        ]
        source_dest_check            = true
        subnet_id                    = "subnet-074c7a41"
        tags                         = {
            "Name"  = "Web server built by terraform"
            "Owner" = "Bharath raju"
        }
        tenancy                      = "default"
        user_data                    = "8bc939b7416a3bce2b5c0ddbdaf420a1b0ce9983"
        vpc_security_group_ids       = [
            "sg-062d3f4acdfa68eeb",
        ]

        credit_specification {
            cpu_credits = "unlimited"
        }

        enclave_options {
            enabled = false
        }

        metadata_options {
            http_endpoint               = "enabled"
            http_put_response_hop_limit = 1
            http_tokens                 = "optional"
        }

        root_block_device {
            delete_on_termination = true
            device_name           = "/dev/xvda"
            encrypted             = false
            iops                  = 100
            tags                  = {}
            throughput            = 0
            volume_id             = "vol-00bc4ab13ab6a1e52"
            volume_size           = 8
            volume_type           = "gp2"
        }
    }

Plan: 0 to add, 1 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo3 %
bharathkumarraju@R77-NB193 Demo3 % terraform apply -auto-approve
aws_security_group.web: Refreshing state... [id=sg-062d3f4acdfa68eeb]
aws_instance.web: Refreshing state... [id=i-039e0c199fdfd3476]
aws_instance.web: Modifying... [id=i-039e0c199fdfd3476]
aws_instance.web: Still modifying... [id=i-039e0c199fdfd3476, 10s elapsed]
aws_instance.web: Still modifying... [id=i-039e0c199fdfd3476, 20s elapsed]
aws_instance.web: Still modifying... [id=i-039e0c199fdfd3476, 30s elapsed]
aws_instance.web: Still modifying... [id=i-039e0c199fdfd3476, 40s elapsed]
aws_instance.web: Still modifying... [id=i-039e0c199fdfd3476, 50s elapsed]
aws_instance.web: Still modifying... [id=i-039e0c199fdfd3476, 1m0s elapsed]
aws_instance.web: Modifications complete after 1m0s [id=i-039e0c199fdfd3476]

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.
bharathkumarraju@R77-NB193 Demo3 %


bharathkumarraju@R77-NB193 terraform % cd aws/Demo3
bharathkumarraju@R77-NB193 Demo3 % terraform destroy -auto-approve
aws_security_group.web: Refreshing state... [id=sg-062d3f4acdfa68eeb]
aws_instance.web: Refreshing state... [id=i-039e0c199fdfd3476]
aws_instance.web: Destroying... [id=i-039e0c199fdfd3476]
aws_instance.web: Still destroying... [id=i-039e0c199fdfd3476, 10s elapsed]
aws_instance.web: Still destroying... [id=i-039e0c199fdfd3476, 20s elapsed]
aws_instance.web: Still destroying... [id=i-039e0c199fdfd3476, 30s elapsed]
aws_instance.web: Still destroying... [id=i-039e0c199fdfd3476, 40s elapsed]
aws_instance.web: Still destroying... [id=i-039e0c199fdfd3476, 50s elapsed]
aws_instance.web: Destruction complete after 51s
aws_security_group.web: Destroying... [id=sg-062d3f4acdfa68eeb]
aws_security_group.web: Destruction complete after 1s

Destroy complete! Resources: 2 destroyed.
bharathkumarraju@R77-NB193 Demo3 %
