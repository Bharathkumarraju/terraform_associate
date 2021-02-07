
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
      + instance_type                = "t3.medium"
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
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
            },
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

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + instance_id       = (known after apply)
  + public_ip         = (known after apply)
  + security_group_id = (known after apply)

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo18_remote_exec %


bharathkumarraju@R77-NB193 Demo18_remote_exec % terraform apply -auto-approve
aws_security_group.web: Creating...
aws_security_group.web: Creation complete after 1s [id=sg-09e1a98f74d152ace]
aws_instance.web: Creating...
aws_instance.web: Still creating... [10s elapsed]
aws_instance.web: Provisioning with 'remote-exec'...
aws_instance.web (remote-exec): Connecting to remote host via SSH...
aws_instance.web (remote-exec):   Host: 18.136.203.225
aws_instance.web (remote-exec):   User: ec2-user
aws_instance.web (remote-exec):   Password: false
aws_instance.web (remote-exec):   Private key: true
aws_instance.web (remote-exec):   Certificate: false
aws_instance.web (remote-exec):   SSH Agent: true
aws_instance.web (remote-exec):   Checking Host Key: false
aws_instance.web: Still creating... [20s elapsed]
aws_instance.web (remote-exec): Connecting to remote host via SSH...
aws_instance.web (remote-exec):   Host: 18.136.203.225
aws_instance.web (remote-exec):   User: ec2-user
aws_instance.web (remote-exec):   Password: false
aws_instance.web (remote-exec):   Private key: true
aws_instance.web (remote-exec):   Certificate: false
aws_instance.web (remote-exec):   SSH Agent: true
aws_instance.web (remote-exec):   Checking Host Key: false
aws_instance.web (remote-exec): Connecting to remote host via SSH...
aws_instance.web (remote-exec):   Host: 18.136.203.225
aws_instance.web (remote-exec):   User: ec2-user
aws_instance.web (remote-exec):   Password: false
aws_instance.web (remote-exec):   Private key: true
aws_instance.web (remote-exec):   Certificate: false
aws_instance.web (remote-exec):   SSH Agent: true
aws_instance.web (remote-exec):   Checking Host Key: false
aws_instance.web (remote-exec): Connected!
aws_instance.web: Creation complete after 28s [id=i-0656d6cd465395202]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

instance_id = "i-0656d6cd465395202"
public_ip = "18.136.203.225"
security_group_id = "sg-09e1a98f74d152ace"
bharathkumarraju@R77-NB193 Demo18_remote_exec % ssh -i bhararthtfcloud.pem ec2-user@18.136.203.225
The authenticity of host '18.136.203.225 (18.136.203.225)' can't be established.
ECDSA key fingerprint is SHA256:GAE+ActebPu4Ak0NHIwXnpD33wiuZARYeBXuZVV6yuM.
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added '18.136.203.225' (ECDSA) to the list of known hosts.
Last login: Sun Feb  7 18:52:25 2021 from bb119-74-194-59.singnet.com.sg

       __|  __|_  )
       _|  (     /   Amazon Linux 2 AMI
      ___|\___|___|

https://aws.amazon.com/amazon-linux-2/
[ec2-user@ip-172-31-11-75 ~]$ ls -rtlh
total 0
drwxrwxr-x 2 ec2-user ec2-user 44 Feb  7 18:52 terraform
[ec2-user@ip-172-31-11-75 ~]$ cd terraform/
[ec2-user@ip-172-31-11-75 terraform]$ ls -rtlh
total 4.0K
-rw-rw-r-- 1 ec2-user ec2-user 25 Feb  7 18:52 terraform.txt
-rw-rw-r-- 1 ec2-user ec2-user  0 Feb  7 18:52 hello.txt
[ec2-user@ip-172-31-11-75 terraform]$ cat terraform.txt
Terraform is here.......
[ec2-user@ip-172-31-11-75 terraform]$


bharathkumarraju@R77-NB193 Demo18_remote_exec % terraform destroy -auto-approve
aws_instance.web: Destroying... [id=i-0656d6cd465395202]
aws_instance.web: Still destroying... [id=i-0656d6cd465395202, 10s elapsed]
aws_instance.web: Still destroying... [id=i-0656d6cd465395202, 20s elapsed]
aws_instance.web: Still destroying... [id=i-0656d6cd465395202, 30s elapsed]
aws_instance.web: Still destroying... [id=i-0656d6cd465395202, 40s elapsed]
aws_instance.web: Still destroying... [id=i-0656d6cd465395202, 50s elapsed]
aws_instance.web: Still destroying... [id=i-0656d6cd465395202, 1m0s elapsed]
aws_instance.web: Still destroying... [id=i-0656d6cd465395202, 1m10s elapsed]
aws_instance.web: Still destroying... [id=i-0656d6cd465395202, 1m20s elapsed]
aws_instance.web: Destruction complete after 1m21s
aws_security_group.web: Destroying... [id=sg-09e1a98f74d152ace]
aws_security_group.web: Destruction complete after 1s

Destroy complete! Resources: 2 destroyed.
bharathkumarraju@R77-NB193 Demo18_remote_exec %


