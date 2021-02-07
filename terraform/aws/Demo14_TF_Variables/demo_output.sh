Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

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

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo14_TF_Variables %


bharathkumarraju@R77-NB193 Demo14_TF_Variables % terraform apply -auto-approve
aws_security_group.web: Creating...
aws_security_group.web: Creation complete after 3s [id=sg-05b1341d60bdbe4a9]
aws_instance.web: Creating...
aws_instance.web: Still creating... [10s elapsed]
aws_instance.web: Creation complete after 19s [id=i-024e1b43cbea6bff8]
aws_eip.web: Creating...
aws_eip.web: Creation complete after 1s [id=eipalloc-015f10ff6e53b05e5]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

instance_id = i-024e1b43cbea6bff8
public_ip = 13.228.72.155
security_group_id = sg-05b1341d60bdbe4a9
bharathkumarraju@R77-NB193 Demo14_TF_Variables %




bharathkumarraju@R77-NB193 Demo14_TF_Variables % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

aws_security_group.web: Refreshing state... [id=sg-05b1341d60bdbe4a9]
aws_instance.web: Refreshing state... [id=i-024e1b43cbea6bff8]
aws_eip.web: Refreshing state... [id=eipalloc-015f10ff6e53b05e5]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  ~ update in-place
+/- create replacement and then destroy

Terraform will perform the following actions:

  # aws_eip.web will be updated in-place
  ~ resource "aws_eip" "web" {
        association_id       = "eipassoc-0f733493c134164b5"
        domain               = "vpc"
        id                   = "eipalloc-015f10ff6e53b05e5"
      ~ instance             = "i-024e1b43cbea6bff8" -> (known after apply)
        network_border_group = "ap-southeast-1"
        network_interface    = "eni-0afba994bfec06445"
        private_dns          = "ip-172-31-28-87.ap-southeast-1.compute.internal"
        private_ip           = "172.31.28.87"
        public_dns           = "ec2-18-139-41-85.ap-southeast-1.compute.amazonaws.com"
        public_ip            = "18.139.41.85"
        public_ipv4_pool     = "amazon"
        tags                 = {
            "Environment" = "Development"
            "Name"        = "Development EIP for Web server built by terraform"
            "Owner"       = "BHARATH"
            "Project"     = "Bharaths-cloud"
        }
        vpc                  = true
    }

  # aws_instance.web must be replaced
+/- resource "aws_instance" "web" {
        ami                          = "ami-00b8d9cb8a7161e41"
      ~ arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-024e1b43cbea6bff8" -> (known after apply)
      ~ associate_public_ip_address  = true -> (known after apply)
      ~ availability_zone            = "ap-southeast-1a" -> (known after apply)
      ~ cpu_core_count               = 1 -> (known after apply)
      ~ cpu_threads_per_core         = 2 -> (known after apply)
      - disable_api_termination      = false -> null
      - ebs_optimized                = false -> null
        get_password_data            = false
      - hibernation                  = false -> null
      + host_id                      = (known after apply)
      ~ id                           = "i-024e1b43cbea6bff8" -> (known after apply)
      ~ instance_state               = "running" -> (known after apply)
        instance_type                = "t3.micro"
      ~ ipv6_address_count           = 0 -> (known after apply)
      ~ ipv6_addresses               = [] -> (known after apply)
      + key_name                     = "bhararthtfcloud" # forces replacement
      - monitoring                   = false -> null
      + outpost_arn                  = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      ~ primary_network_interface_id = "eni-0afba994bfec06445" -> (known after apply)
      ~ private_dns                  = "ip-172-31-28-87.ap-southeast-1.compute.internal" -> (known after apply)
      ~ private_ip                   = "172.31.28.87" -> (known after apply)
      ~ public_dns                   = "ec2-18-139-41-85.ap-southeast-1.compute.amazonaws.com" -> (known after apply)
      ~ public_ip                    = "18.139.41.85" -> (known after apply)
      ~ secondary_private_ips        = [] -> (known after apply)
      ~ security_groups              = [
          - "WebServer-SG",
        ] -> (known after apply)
        source_dest_check            = true
      ~ subnet_id                    = "subnet-a036c0e9" -> (known after apply)
        tags                         = {
            "Environment" = "Development"
            "Name"        = "Development WebServer Built by Terraform"
            "Owner"       = "BHARATH"
            "Project"     = "Bharaths-cloud"
        }
      ~ tenancy                      = "default" -> (known after apply)
        user_data                    = "15a52b6e9b73c5d3db083404457d3a5fc224166a"
        vpc_security_group_ids       = [
            "sg-05b1341d60bdbe4a9",
        ]

      - credit_specification {
          - cpu_credits = "unlimited" -> null
        }

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

      ~ enclave_options {
          ~ enabled = false -> (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      ~ metadata_options {
          ~ http_endpoint               = "enabled" -> (known after apply)
          ~ http_put_response_hop_limit = 1 -> (known after apply)
          ~ http_tokens                 = "optional" -> (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      ~ root_block_device {
          ~ delete_on_termination = true -> (known after apply)
          ~ device_name           = "/dev/xvda" -> (known after apply)
          ~ encrypted             = false -> (known after apply)
          ~ iops                  = 100 -> (known after apply)
          + kms_key_id            = (known after apply)
          ~ tags                  = {} -> (known after apply)
          ~ throughput            = 0 -> (known after apply)
          ~ volume_id             = "vol-02ad06c19484461b2" -> (known after apply)
          ~ volume_size           = 8 -> (known after apply)
          ~ volume_type           = "gp2" -> (known after apply)
        }
    }

Plan: 1 to add, 1 to change, 1 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo14_TF_Variables % tfswitch
✔ 0.14.6
Downloading https://releases.hashicorp.com/terraform/0.14.6/terraform_0.14.6_darwin_amd64.zip to terraform_0.14.6_darwin_amd64.zip
Downloading ...
34590555 bytes downloaded.
Switched terraform to version "0.14.6"
bharathkumarraju@R77-NB193 Demo14_TF_Variables %




bharathkumarraju@R77-NB193 Demo14_TF_Variables % terraform apply -auto-approve
aws_security_group.web: Refreshing state... [id=sg-05b1341d60bdbe4a9]
aws_instance.web: Refreshing state... [id=i-024e1b43cbea6bff8]
aws_eip.web: Refreshing state... [id=eipalloc-015f10ff6e53b05e5]
aws_instance.web: Creating...
aws_instance.web: Still creating... [10s elapsed]
aws_instance.web: Creation complete after 18s [id=i-09837404109a9cbeb]
aws_eip.web: Modifying... [id=eipalloc-015f10ff6e53b05e5]
aws_eip.web: Modifications complete after 2s [id=eipalloc-015f10ff6e53b05e5]
aws_instance.web: Destroying... [id=i-024e1b43cbea6bff8]
aws_instance.web: Still destroying... [id=i-024e1b43cbea6bff8, 10s elapsed]
aws_instance.web: Still destroying... [id=i-024e1b43cbea6bff8, 20s elapsed]
aws_instance.web: Still destroying... [id=i-024e1b43cbea6bff8, 30s elapsed]
aws_instance.web: Still destroying... [id=i-024e1b43cbea6bff8, 40s elapsed]
aws_instance.web: Still destroying... [id=i-024e1b43cbea6bff8, 50s elapsed]
aws_instance.web: Destruction complete after 50s

Apply complete! Resources: 1 added, 1 changed, 1 destroyed.

Outputs:

instance_id = i-09837404109a9cbeb
public_ip = 52.77.229.16
security_group_id = sg-05b1341d60bdbe4a9
bharathkumarraju@R77-NB193 Demo14_TF_Variables %

