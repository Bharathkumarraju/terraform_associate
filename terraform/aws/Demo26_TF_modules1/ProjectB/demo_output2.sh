bharathkumarraju@R77-NB193 ProjectB % terraform init
Initializing modules...
- server_loop_count in ../modules/aws_testserver
- server_loop_foreach in ../modules/aws_testserver

Initializing the backend...

Initializing provider plugins...
- Reusing previous version of hashicorp/aws from the dependency lock file

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumarraju@R77-NB193 ProjectB % terraform plan
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Refreshing state... [id=nat-005528ff27483e6b6]
module.prod_server.aws_security_group.webserver: Refreshing state... [id=sg-0702c13bb9d7b2a23]
module.bharath_vpc_production.aws_route_table.private_subnets[2]: Refreshing state... [id=rtb-06337d15b23812158]
module.bharath_vpc_production.aws_route_table.private_subnets[0]: Refreshing state... [id=rtb-08fd3baffd4800dfc]
module.bharath_vpc_production.aws_route_table.private_subnets[1]: Refreshing state... [id=rtb-079e6d28952ac8cb7]
module.bharath_vpc_production.aws_route_table_association.public_routes[0]: Refreshing state... [id=rtbassoc-072bb1a41dd1995fc]
module.bharath_vpc_production.aws_route_table_association.public_routes[2]: Refreshing state... [id=rtbassoc-07f442ebdacb5e589]
module.bharath_vpc_production.aws_route_table_association.public_routes[1]: Refreshing state... [id=rtbassoc-0cfa49db9e69c78b3]
module.bharath_vpc_production.aws_route_table_association.private_routes[0]: Refreshing state... [id=rtbassoc-02d3d65cbfca29f17]
module.bharath_vpc_production.aws_route_table_association.private_routes[1]: Refreshing state... [id=rtbassoc-0f7a9e1db981ab1e2]
module.bharath_vpc_production.aws_route_table_association.private_routes[2]: Refreshing state... [id=rtbassoc-005fb1d458f1688dd]
module.prod_server.aws_instance.web_server: Refreshing state... [id=i-018c2a77145f08af5]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create
  ~ update in-place
 <= read (data resources)

Terraform will perform the following actions:

  # module.bharath_vpc_production.aws_route_table.private_subnets[0] will be updated in-place
  ~ resource "aws_route_table" "private_subnets" {
        id               = "rtb-08fd3baffd4800dfc"
      ~ route            = [
          - {
              - cidr_block                = "0.0.0.0/0"
              - egress_only_gateway_id    = ""
              - gateway_id                = ""
              - instance_id               = ""
              - ipv6_cidr_block           = ""
              - local_gateway_id          = ""
              - nat_gateway_id            = "nat-005528ff27483e6b6"
              - network_interface_id      = ""
              - transit_gateway_id        = ""
              - vpc_endpoint_id           = ""
              - vpc_peering_connection_id = ""
            },
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = "nat-005528ff27483e6b6"
              + instance_id               = ""
              + ipv6_cidr_block           = ""
              + local_gateway_id          = ""
              + nat_gateway_id            = ""
              + network_interface_id      = ""
              + transit_gateway_id        = ""
              + vpc_endpoint_id           = ""
              + vpc_peering_connection_id = ""
            },
        ]
        tags             = {
            "Code"    = "18181818"
            "Name"    = "production-route-private-subnet-1"
            "Owner"   = "BKRAJU"
            "Project" = "BKRPROD"
        }
        # (3 unchanged attributes hidden)
    }

  # module.bharath_vpc_production.aws_route_table.private_subnets[1] will be updated in-place
  ~ resource "aws_route_table" "private_subnets" {
        id               = "rtb-079e6d28952ac8cb7"
      ~ route            = [
          - {
              - cidr_block                = "0.0.0.0/0"
              - egress_only_gateway_id    = ""
              - gateway_id                = ""
              - instance_id               = ""
              - ipv6_cidr_block           = ""
              - local_gateway_id          = ""
              - nat_gateway_id            = "nat-01cede30c9d34cead"
              - network_interface_id      = ""
              - transit_gateway_id        = ""
              - vpc_endpoint_id           = ""
              - vpc_peering_connection_id = ""
            },
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = "nat-01cede30c9d34cead"
              + instance_id               = ""
              + ipv6_cidr_block           = ""
              + local_gateway_id          = ""
              + nat_gateway_id            = ""
              + network_interface_id      = ""
              + transit_gateway_id        = ""
              + vpc_endpoint_id           = ""
              + vpc_peering_connection_id = ""
            },
        ]
        tags             = {
            "Code"    = "18181818"
            "Name"    = "production-route-private-subnet-2"
            "Owner"   = "BKRAJU"
            "Project" = "BKRPROD"
        }
        # (3 unchanged attributes hidden)
    }

  # module.bharath_vpc_production.aws_route_table.private_subnets[2] will be updated in-place
  ~ resource "aws_route_table" "private_subnets" {
        id               = "rtb-06337d15b23812158"
      ~ route            = [
          - {
              - cidr_block                = "0.0.0.0/0"
              - egress_only_gateway_id    = ""
              - gateway_id                = ""
              - instance_id               = ""
              - ipv6_cidr_block           = ""
              - local_gateway_id          = ""
              - nat_gateway_id            = "nat-0eeed7a8b458fdb18"
              - network_interface_id      = ""
              - transit_gateway_id        = ""
              - vpc_endpoint_id           = ""
              - vpc_peering_connection_id = ""
            },
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = "nat-0eeed7a8b458fdb18"
              + instance_id               = ""
              + ipv6_cidr_block           = ""
              + local_gateway_id          = ""
              + nat_gateway_id            = ""
              + network_interface_id      = ""
              + transit_gateway_id        = ""
              + vpc_endpoint_id           = ""
              + vpc_peering_connection_id = ""
            },
        ]
        tags             = {
            "Code"    = "18181818"
            "Name"    = "production-route-private-subnet-3"
            "Owner"   = "BKRAJU"
            "Project" = "BKRPROD"
        }
        # (3 unchanged attributes hidden)
    }

  # module.server_loop_count[0].aws_instance.web_server will be created
  + resource "aws_instance" "web_server" {
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
      + subnet_id                    = "subnet-0f2f3783276e3689e"
      + tags                         = {
          + "Name"  = "bharath-raju-WebServer-subnet-0f2f3783276e3689e"
          + "Owner" = "BD"
        }
      + tenancy                      = (known after apply)
      + user_data                    = "7f67ead4e5cbb49ec0877f8e06a7f308261b27ae"
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

  # module.server_loop_count[0].aws_security_group.webserver will be created
  + resource "aws_security_group" "webserver" {
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
      + name                   = (known after apply)
      + name_prefix            = "bharath-raju WebServer SG-"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"  = "bharath-raju-web-server-sg"
          + "Owner" = "Denis Astahov"
        }
      + vpc_id                 = "vpc-0c61f9299df461257"
    }

  # module.server_loop_count[1].aws_instance.web_server will be created
  + resource "aws_instance" "web_server" {
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
      + subnet_id                    = "subnet-0a7b031d3e7b30064"
      + tags                         = {
          + "Name"  = "bharath-raju-WebServer-subnet-0a7b031d3e7b30064"
          + "Owner" = "BD"
        }
      + tenancy                      = (known after apply)
      + user_data                    = "d4b2c2373b0d8303056145db162ce6c0b2d0f53d"
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

  # module.server_loop_count[1].aws_security_group.webserver will be created
  + resource "aws_security_group" "webserver" {
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
      + name                   = (known after apply)
      + name_prefix            = "bharath-raju WebServer SG-"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"  = "bharath-raju-web-server-sg"
          + "Owner" = "Denis Astahov"
        }
      + vpc_id                 = "vpc-0c61f9299df461257"
    }

  # module.server_loop_count[2].aws_instance.web_server will be created
  + resource "aws_instance" "web_server" {
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
      + subnet_id                    = "subnet-074629c5765468657"
      + tags                         = {
          + "Name"  = "bharath-raju-WebServer-subnet-074629c5765468657"
          + "Owner" = "BD"
        }
      + tenancy                      = (known after apply)
      + user_data                    = "ee4bf27c89fb146cbb01e45200b32a6b48785594"
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

  # module.server_loop_count[2].aws_security_group.webserver will be created
  + resource "aws_security_group" "webserver" {
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
      + name                   = (known after apply)
      + name_prefix            = "bharath-raju WebServer SG-"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"  = "bharath-raju-web-server-sg"
          + "Owner" = "Denis Astahov"
        }
      + vpc_id                 = "vpc-0c61f9299df461257"
    }

  # module.server_loop_foreach["subnet-074629c5765468657"].data.aws_ami.latest_amazon_linux will be read during apply
  # (config refers to values not yet known)
 <= data "aws_ami" "latest_amazon_linux"  {
      + architecture          = (known after apply)
      + arn                   = (known after apply)
      + block_device_mappings = (known after apply)
      + creation_date         = (known after apply)
      + description           = (known after apply)
      + hypervisor            = (known after apply)
      + id                    = (known after apply)
      + image_id              = (known after apply)
      + image_location        = (known after apply)
      + image_owner_alias     = (known after apply)
      + image_type            = (known after apply)
      + kernel_id             = (known after apply)
      + most_recent           = true
      + name                  = (known after apply)
      + owner_id              = (known after apply)
      + owners                = [
          + "amazon",
        ]
      + platform              = (known after apply)
      + product_codes         = (known after apply)
      + public                = (known after apply)
      + ramdisk_id            = (known after apply)
      + root_device_name      = (known after apply)
      + root_device_type      = (known after apply)
      + root_snapshot_id      = (known after apply)
      + sriov_net_support     = (known after apply)
      + state                 = (known after apply)
      + state_reason          = (known after apply)
      + tags                  = (known after apply)
      + virtualization_type   = (known after apply)

      + filter {
          + name   = "name"
          + values = [
              + "amzn2-ami-hvm-*-x86_64-gp2",
            ]
        }
    }

  # module.server_loop_foreach["subnet-074629c5765468657"].data.aws_subnet.web will be read during apply
  # (config refers to values not yet known)
 <= data "aws_subnet" "web"  {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = (known after apply)
      + availability_zone               = (known after apply)
      + availability_zone_id            = (known after apply)
      + cidr_block                      = (known after apply)
      + customer_owned_ipv4_pool        = (known after apply)
      + default_for_az                  = (known after apply)
      + id                              = "subnet-074629c5765468657"
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_customer_owned_ip_on_launch = (known after apply)
      + map_public_ip_on_launch         = (known after apply)
      + outpost_arn                     = (known after apply)
      + owner_id                        = (known after apply)
      + state                           = (known after apply)
      + tags                            = (known after apply)
      + vpc_id                          = (known after apply)
    }

  # module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server will be created
  + resource "aws_instance" "web_server" {
      + ami                          = (known after apply)
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
      + subnet_id                    = "subnet-074629c5765468657"
      + tags                         = {
          + "Name"  = "BD-WebServer-subnet-074629c5765468657"
          + "Owner" = "BD"
        }
      + tenancy                      = (known after apply)
      + user_data                    = (known after apply)
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

  # module.server_loop_foreach["subnet-074629c5765468657"].aws_security_group.webserver will be created
  + resource "aws_security_group" "webserver" {
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
      + name                   = (known after apply)
      + name_prefix            = "BD WebServer SG-"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"  = "BD-web-server-sg"
          + "Owner" = "Denis Astahov"
        }
      + vpc_id                 = (known after apply)
    }

  # module.server_loop_foreach["subnet-0a7b031d3e7b30064"].data.aws_ami.latest_amazon_linux will be read during apply
  # (config refers to values not yet known)
 <= data "aws_ami" "latest_amazon_linux"  {
      + architecture          = (known after apply)
      + arn                   = (known after apply)
      + block_device_mappings = (known after apply)
      + creation_date         = (known after apply)
      + description           = (known after apply)
      + hypervisor            = (known after apply)
      + id                    = (known after apply)
      + image_id              = (known after apply)
      + image_location        = (known after apply)
      + image_owner_alias     = (known after apply)
      + image_type            = (known after apply)
      + kernel_id             = (known after apply)
      + most_recent           = true
      + name                  = (known after apply)
      + owner_id              = (known after apply)
      + owners                = [
          + "amazon",
        ]
      + platform              = (known after apply)
      + product_codes         = (known after apply)
      + public                = (known after apply)
      + ramdisk_id            = (known after apply)
      + root_device_name      = (known after apply)
      + root_device_type      = (known after apply)
      + root_snapshot_id      = (known after apply)
      + sriov_net_support     = (known after apply)
      + state                 = (known after apply)
      + state_reason          = (known after apply)
      + tags                  = (known after apply)
      + virtualization_type   = (known after apply)

      + filter {
          + name   = "name"
          + values = [
              + "amzn2-ami-hvm-*-x86_64-gp2",
            ]
        }
    }

  # module.server_loop_foreach["subnet-0a7b031d3e7b30064"].data.aws_subnet.web will be read during apply
  # (config refers to values not yet known)
 <= data "aws_subnet" "web"  {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = (known after apply)
      + availability_zone               = (known after apply)
      + availability_zone_id            = (known after apply)
      + cidr_block                      = (known after apply)
      + customer_owned_ipv4_pool        = (known after apply)
      + default_for_az                  = (known after apply)
      + id                              = "subnet-0a7b031d3e7b30064"
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_customer_owned_ip_on_launch = (known after apply)
      + map_public_ip_on_launch         = (known after apply)
      + outpost_arn                     = (known after apply)
      + owner_id                        = (known after apply)
      + state                           = (known after apply)
      + tags                            = (known after apply)
      + vpc_id                          = (known after apply)
    }

  # module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server will be created
  + resource "aws_instance" "web_server" {
      + ami                          = (known after apply)
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
      + subnet_id                    = "subnet-0a7b031d3e7b30064"
      + tags                         = {
          + "Name"  = "BD-WebServer-subnet-0a7b031d3e7b30064"
          + "Owner" = "BD"
        }
      + tenancy                      = (known after apply)
      + user_data                    = (known after apply)
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

  # module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_security_group.webserver will be created
  + resource "aws_security_group" "webserver" {
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
      + name                   = (known after apply)
      + name_prefix            = "BD WebServer SG-"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"  = "BD-web-server-sg"
          + "Owner" = "Denis Astahov"
        }
      + vpc_id                 = (known after apply)
    }

  # module.server_loop_foreach["subnet-0f2f3783276e3689e"].data.aws_ami.latest_amazon_linux will be read during apply
  # (config refers to values not yet known)
 <= data "aws_ami" "latest_amazon_linux"  {
      + architecture          = (known after apply)
      + arn                   = (known after apply)
      + block_device_mappings = (known after apply)
      + creation_date         = (known after apply)
      + description           = (known after apply)
      + hypervisor            = (known after apply)
      + id                    = (known after apply)
      + image_id              = (known after apply)
      + image_location        = (known after apply)
      + image_owner_alias     = (known after apply)
      + image_type            = (known after apply)
      + kernel_id             = (known after apply)
      + most_recent           = true
      + name                  = (known after apply)
      + owner_id              = (known after apply)
      + owners                = [
          + "amazon",
        ]
      + platform              = (known after apply)
      + product_codes         = (known after apply)
      + public                = (known after apply)
      + ramdisk_id            = (known after apply)
      + root_device_name      = (known after apply)
      + root_device_type      = (known after apply)
      + root_snapshot_id      = (known after apply)
      + sriov_net_support     = (known after apply)
      + state                 = (known after apply)
      + state_reason          = (known after apply)
      + tags                  = (known after apply)
      + virtualization_type   = (known after apply)

      + filter {
          + name   = "name"
          + values = [
              + "amzn2-ami-hvm-*-x86_64-gp2",
            ]
        }
    }

  # module.server_loop_foreach["subnet-0f2f3783276e3689e"].data.aws_subnet.web will be read during apply
  # (config refers to values not yet known)
 <= data "aws_subnet" "web"  {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = (known after apply)
      + availability_zone               = (known after apply)
      + availability_zone_id            = (known after apply)
      + cidr_block                      = (known after apply)
      + customer_owned_ipv4_pool        = (known after apply)
      + default_for_az                  = (known after apply)
      + id                              = "subnet-0f2f3783276e3689e"
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_customer_owned_ip_on_launch = (known after apply)
      + map_public_ip_on_launch         = (known after apply)
      + outpost_arn                     = (known after apply)
      + owner_id                        = (known after apply)
      + state                           = (known after apply)
      + tags                            = (known after apply)
      + vpc_id                          = (known after apply)
    }

  # module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server will be created
  + resource "aws_instance" "web_server" {
      + ami                          = (known after apply)
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
      + subnet_id                    = "subnet-0f2f3783276e3689e"
      + tags                         = {
          + "Name"  = "BD-WebServer-subnet-0f2f3783276e3689e"
          + "Owner" = "BD"
        }
      + tenancy                      = (known after apply)
      + user_data                    = (known after apply)
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

  # module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_security_group.webserver will be created
  + resource "aws_security_group" "webserver" {
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
      + name                   = (known after apply)
      + name_prefix            = "BD WebServer SG-"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"  = "BD-web-server-sg"
          + "Owner" = "Denis Astahov"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 12 to add, 3 to change, 0 to destroy.

Changes to Outputs:
  + servers_loop_count_ips   = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]
  + servers_loop_foreach_ips = [
      + (known after apply),
      + (known after apply),
      + (known after apply),
    ]

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 ProjectB % terraform apply -auto-approve
module.bharath_vpc_production.aws_eip.nat[0]: Refreshing state... [id=eipalloc-03b5f27a9f7a7eb41]
module.bharath_vpc_production.aws_eip.nat[1]: Refreshing state... [id=eipalloc-0ee6e935fab6c2a29]
module.bharath_vpc_production.aws_eip.nat[2]: Refreshing state... [id=eipalloc-034ddc0dfd63ff251]
module.bharath_vpc_production.aws_vpc.main: Refreshing state... [id=vpc-0c61f9299df461257]
module.bharath_vpc_production.aws_internet_gateway.main: Refreshing state... [id=igw-010d5fd859088eafb]
module.bharath_vpc_production.aws_subnet.private_subnets[0]: Refreshing state... [id=subnet-0245981ecb43c01d7]
module.bharath_vpc_production.aws_subnet.private_subnets[1]: Refreshing state... [id=subnet-07998cb4d08d409a0]
module.bharath_vpc_production.aws_subnet.private_subnets[2]: Refreshing state... [id=subnet-0df5f318c03b9e0d6]
module.bharath_vpc_production.aws_subnet.public_subnets[1]: Refreshing state... [id=subnet-0a7b031d3e7b30064]
module.bharath_vpc_production.aws_subnet.public_subnets[0]: Refreshing state... [id=subnet-0f2f3783276e3689e]
module.bharath_vpc_production.aws_subnet.public_subnets[2]: Refreshing state... [id=subnet-074629c5765468657]
module.bharath_vpc_production.aws_route_table.public_subnets: Refreshing state... [id=rtb-057807f5b65fd6d85]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Refreshing state... [id=nat-0eeed7a8b458fdb18]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Refreshing state... [id=nat-005528ff27483e6b6]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Refreshing state... [id=nat-01cede30c9d34cead]
module.bharath_vpc_production.aws_route_table_association.public_routes[2]: Refreshing state... [id=rtbassoc-07f442ebdacb5e589]
module.bharath_vpc_production.aws_route_table_association.public_routes[1]: Refreshing state... [id=rtbassoc-0cfa49db9e69c78b3]
module.bharath_vpc_production.aws_route_table_association.public_routes[0]: Refreshing state... [id=rtbassoc-072bb1a41dd1995fc]
module.prod_server.aws_security_group.webserver: Refreshing state... [id=sg-0702c13bb9d7b2a23]
module.bharath_vpc_production.aws_route_table.private_subnets[1]: Refreshing state... [id=rtb-079e6d28952ac8cb7]
module.bharath_vpc_production.aws_route_table.private_subnets[0]: Refreshing state... [id=rtb-08fd3baffd4800dfc]
module.bharath_vpc_production.aws_route_table.private_subnets[2]: Refreshing state... [id=rtb-06337d15b23812158]
module.prod_server.aws_instance.web_server: Refreshing state... [id=i-018c2a77145f08af5]
module.bharath_vpc_production.aws_route_table_association.private_routes[2]: Refreshing state... [id=rtbassoc-005fb1d458f1688dd]
module.bharath_vpc_production.aws_route_table_association.private_routes[0]: Refreshing state... [id=rtbassoc-02d3d65cbfca29f17]
module.bharath_vpc_production.aws_route_table_association.private_routes[1]: Refreshing state... [id=rtbassoc-0f7a9e1db981ab1e2]
module.bharath_vpc_production.aws_route_table.private_subnets[0]: Modifying... [id=rtb-08fd3baffd4800dfc]
module.bharath_vpc_production.aws_route_table.private_subnets[2]: Modifying... [id=rtb-06337d15b23812158]
module.server_loop_count[0].aws_security_group.webserver: Creating...
module.server_loop_count[1].aws_security_group.webserver: Creating...
module.server_loop_count[2].aws_security_group.webserver: Creating...
module.bharath_vpc_production.aws_route_table.private_subnets[1]: Modifying... [id=rtb-079e6d28952ac8cb7]
module.bharath_vpc_production.aws_route_table.private_subnets[1]: Modifications complete after 4s [id=rtb-079e6d28952ac8cb7]
module.bharath_vpc_production.aws_route_table.private_subnets[0]: Modifications complete after 4s [id=rtb-08fd3baffd4800dfc]
module.bharath_vpc_production.aws_route_table.private_subnets[2]: Modifications complete after 4s [id=rtb-06337d15b23812158]
module.server_loop_count[0].aws_security_group.webserver: Creation complete after 10s [id=sg-0901509c16723f10a]
module.server_loop_count[2].aws_security_group.webserver: Creation complete after 10s [id=sg-01de2f459bce92733]
module.server_loop_count[0].aws_instance.web_server: Creating...
module.server_loop_count[2].aws_instance.web_server: Creating...
module.server_loop_count[1].aws_security_group.webserver: Creation complete after 10s [id=sg-083e25a83280f8248]
module.server_loop_count[1].aws_instance.web_server: Creating...
module.server_loop_count[2].aws_instance.web_server: Still creating... [10s elapsed]
module.server_loop_count[0].aws_instance.web_server: Still creating... [10s elapsed]
module.server_loop_count[1].aws_instance.web_server: Still creating... [10s elapsed]
module.server_loop_count[0].aws_instance.web_server: Creation complete after 19s [id=i-01cf2abc4731a3a05]
module.server_loop_count[1].aws_instance.web_server: Creation complete after 19s [id=i-08d72b0508cc42a6d]
module.server_loop_count[2].aws_instance.web_server: Still creating... [20s elapsed]
module.server_loop_count[2].aws_instance.web_server: Creation complete after 20s [id=i-03cc91698956b2753]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].data.aws_ami.latest_amazon_linux: Reading...
module.server_loop_foreach["subnet-074629c5765468657"].data.aws_ami.latest_amazon_linux: Reading...
module.server_loop_foreach["subnet-0f2f3783276e3689e"].data.aws_ami.latest_amazon_linux: Reading...
module.server_loop_foreach["subnet-0f2f3783276e3689e"].data.aws_subnet.web: Reading...
module.server_loop_foreach["subnet-074629c5765468657"].data.aws_subnet.web: Reading...
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].data.aws_subnet.web: Reading...
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].data.aws_subnet.web: Read complete after 1s [id=subnet-0a7b031d3e7b30064]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].data.aws_subnet.web: Read complete after 1s [id=subnet-0f2f3783276e3689e]
module.server_loop_foreach["subnet-074629c5765468657"].data.aws_subnet.web: Read complete after 1s [id=subnet-074629c5765468657]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_security_group.webserver: Creating...
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_security_group.webserver: Creating...
module.server_loop_foreach["subnet-074629c5765468657"].aws_security_group.webserver: Creating...
module.server_loop_foreach["subnet-0f2f3783276e3689e"].data.aws_ami.latest_amazon_linux: Read complete after 2s [id=ami-098828924dc89ea4a]
module.server_loop_foreach["subnet-074629c5765468657"].data.aws_ami.latest_amazon_linux: Read complete after 2s [id=ami-098828924dc89ea4a]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].data.aws_ami.latest_amazon_linux: Read complete after 2s [id=ami-098828924dc89ea4a]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_security_group.webserver: Creation complete after 9s [id=sg-0d84116441e7cf15e]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_security_group.webserver: Creation complete after 9s [id=sg-0d43f65ab4d30c182]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server: Creating...
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server: Creating...
module.server_loop_foreach["subnet-074629c5765468657"].aws_security_group.webserver: Still creating... [10s elapsed]
module.server_loop_foreach["subnet-074629c5765468657"].aws_security_group.webserver: Creation complete after 10s [id=sg-04fd500fba563f028]
module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server: Creating...
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server: Still creating... [10s elapsed]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server: Still creating... [10s elapsed]
module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server: Still creating... [10s elapsed]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server: Still creating... [20s elapsed]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server: Still creating... [20s elapsed]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server: Creation complete after 20s [id=i-0aa0bc984ce581d17]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server: Creation complete after 20s [id=i-06aa3b885c8749185]
module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server: Still creating... [20s elapsed]
module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server: Creation complete after 20s [id=i-05287585a0ad21d7c]

Apply complete! Resources: 12 added, 3 changed, 0 destroyed.

Outputs:

server_ip = "18.134.132.114"
servers_loop_count_ips = [
  "18.134.249.159",
  "35.177.138.206",
  "18.130.193.19",
]
servers_loop_foreach_ips = [
  "18.132.71.27",
  "3.8.163.254",
  "35.179.96.55",
]
bharathkumarraju@R77-NB193 ProjectB %


bharathkumarraju@R77-NB193 ProjectB % terraform plan
module.bharath_vpc_production.aws_eip.nat[2]: Refreshing state... [id=eipalloc-034ddc0dfd63ff251]
module.bharath_vpc_production.aws_eip.nat[1]: Refreshing state... [id=eipalloc-0ee6e935fab6c2a29]
module.bharath_vpc_production.aws_vpc.main: Refreshing state... [id=vpc-0c61f9299df461257]
module.bharath_vpc_production.aws_eip.nat[0]: Refreshing state... [id=eipalloc-03b5f27a9f7a7eb41]
module.bharath_vpc_production.aws_subnet.public_subnets[0]: Refreshing state... [id=subnet-0f2f3783276e3689e]
module.bharath_vpc_production.aws_subnet.public_subnets[2]: Refreshing state... [id=subnet-074629c5765468657]
module.bharath_vpc_production.aws_subnet.public_subnets[1]: Refreshing state... [id=subnet-0a7b031d3e7b30064]
module.bharath_vpc_production.aws_internet_gateway.main: Refreshing state... [id=igw-010d5fd859088eafb]
module.bharath_vpc_production.aws_subnet.private_subnets[2]: Refreshing state... [id=subnet-0df5f318c03b9e0d6]
module.bharath_vpc_production.aws_subnet.private_subnets[1]: Refreshing state... [id=subnet-07998cb4d08d409a0]
module.bharath_vpc_production.aws_subnet.private_subnets[0]: Refreshing state... [id=subnet-0245981ecb43c01d7]
module.bharath_vpc_production.aws_route_table.public_subnets: Refreshing state... [id=rtb-057807f5b65fd6d85]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Refreshing state... [id=nat-01cede30c9d34cead]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Refreshing state... [id=nat-005528ff27483e6b6]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Refreshing state... [id=nat-0eeed7a8b458fdb18]
module.bharath_vpc_production.aws_route_table_association.public_routes[2]: Refreshing state... [id=rtbassoc-07f442ebdacb5e589]
module.bharath_vpc_production.aws_route_table_association.public_routes[0]: Refreshing state... [id=rtbassoc-072bb1a41dd1995fc]
module.bharath_vpc_production.aws_route_table_association.public_routes[1]: Refreshing state... [id=rtbassoc-0cfa49db9e69c78b3]
module.prod_server.aws_security_group.webserver: Refreshing state... [id=sg-0702c13bb9d7b2a23]
module.bharath_vpc_production.aws_route_table.private_subnets[2]: Refreshing state... [id=rtb-06337d15b23812158]
module.bharath_vpc_production.aws_route_table.private_subnets[0]: Refreshing state... [id=rtb-08fd3baffd4800dfc]
module.bharath_vpc_production.aws_route_table.private_subnets[1]: Refreshing state... [id=rtb-079e6d28952ac8cb7]
module.server_loop_count[2].aws_security_group.webserver: Refreshing state... [id=sg-01de2f459bce92733]
module.server_loop_count[0].aws_security_group.webserver: Refreshing state... [id=sg-0901509c16723f10a]
module.server_loop_count[1].aws_security_group.webserver: Refreshing state... [id=sg-083e25a83280f8248]
module.prod_server.aws_instance.web_server: Refreshing state... [id=i-018c2a77145f08af5]
module.bharath_vpc_production.aws_route_table_association.private_routes[1]: Refreshing state... [id=rtbassoc-0f7a9e1db981ab1e2]
module.bharath_vpc_production.aws_route_table_association.private_routes[2]: Refreshing state... [id=rtbassoc-005fb1d458f1688dd]
module.bharath_vpc_production.aws_route_table_association.private_routes[0]: Refreshing state... [id=rtbassoc-02d3d65cbfca29f17]
module.server_loop_count[2].aws_instance.web_server: Refreshing state... [id=i-03cc91698956b2753]
module.server_loop_count[0].aws_instance.web_server: Refreshing state... [id=i-01cf2abc4731a3a05]
module.server_loop_count[1].aws_instance.web_server: Refreshing state... [id=i-08d72b0508cc42a6d]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_security_group.webserver: Refreshing state... [id=sg-0d43f65ab4d30c182]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_security_group.webserver: Refreshing state... [id=sg-0d84116441e7cf15e]
module.server_loop_foreach["subnet-074629c5765468657"].aws_security_group.webserver: Refreshing state... [id=sg-04fd500fba563f028]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server: Refreshing state... [id=i-0aa0bc984ce581d17]
module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server: Refreshing state... [id=i-05287585a0ad21d7c]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server: Refreshing state... [id=i-06aa3b885c8749185]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # module.bharath_vpc_production.aws_route_table.private_subnets[0] will be updated in-place
  ~ resource "aws_route_table" "private_subnets" {
        id               = "rtb-08fd3baffd4800dfc"
      ~ route            = [
          - {
              - cidr_block                = "0.0.0.0/0"
              - egress_only_gateway_id    = ""
              - gateway_id                = ""
              - instance_id               = ""
              - ipv6_cidr_block           = ""
              - local_gateway_id          = ""
              - nat_gateway_id            = "nat-005528ff27483e6b6"
              - network_interface_id      = ""
              - transit_gateway_id        = ""
              - vpc_endpoint_id           = ""
              - vpc_peering_connection_id = ""
            },
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = "nat-005528ff27483e6b6"
              + instance_id               = ""
              + ipv6_cidr_block           = ""
              + local_gateway_id          = ""
              + nat_gateway_id            = ""
              + network_interface_id      = ""
              + transit_gateway_id        = ""
              + vpc_endpoint_id           = ""
              + vpc_peering_connection_id = ""
            },
        ]
        tags             = {
            "Code"    = "18181818"
            "Name"    = "production-route-private-subnet-1"
            "Owner"   = "BKRAJU"
            "Project" = "BKRPROD"
        }
        # (3 unchanged attributes hidden)
    }

  # module.bharath_vpc_production.aws_route_table.private_subnets[1] will be updated in-place
  ~ resource "aws_route_table" "private_subnets" {
        id               = "rtb-079e6d28952ac8cb7"
      ~ route            = [
          - {
              - cidr_block                = "0.0.0.0/0"
              - egress_only_gateway_id    = ""
              - gateway_id                = ""
              - instance_id               = ""
              - ipv6_cidr_block           = ""
              - local_gateway_id          = ""
              - nat_gateway_id            = "nat-01cede30c9d34cead"
              - network_interface_id      = ""
              - transit_gateway_id        = ""
              - vpc_endpoint_id           = ""
              - vpc_peering_connection_id = ""
            },
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = "nat-01cede30c9d34cead"
              + instance_id               = ""
              + ipv6_cidr_block           = ""
              + local_gateway_id          = ""
              + nat_gateway_id            = ""
              + network_interface_id      = ""
              + transit_gateway_id        = ""
              + vpc_endpoint_id           = ""
              + vpc_peering_connection_id = ""
            },
        ]
        tags             = {
            "Code"    = "18181818"
            "Name"    = "production-route-private-subnet-2"
            "Owner"   = "BKRAJU"
            "Project" = "BKRPROD"
        }
        # (3 unchanged attributes hidden)
    }

  # module.bharath_vpc_production.aws_route_table.private_subnets[2] will be updated in-place
  ~ resource "aws_route_table" "private_subnets" {
        id               = "rtb-06337d15b23812158"
      ~ route            = [
          - {
              - cidr_block                = "0.0.0.0/0"
              - egress_only_gateway_id    = ""
              - gateway_id                = ""
              - instance_id               = ""
              - ipv6_cidr_block           = ""
              - local_gateway_id          = ""
              - nat_gateway_id            = "nat-0eeed7a8b458fdb18"
              - network_interface_id      = ""
              - transit_gateway_id        = ""
              - vpc_endpoint_id           = ""
              - vpc_peering_connection_id = ""
            },
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = "nat-0eeed7a8b458fdb18"
              + instance_id               = ""
              + ipv6_cidr_block           = ""
              + local_gateway_id          = ""
              + nat_gateway_id            = ""
              + network_interface_id      = ""
              + transit_gateway_id        = ""
              + vpc_endpoint_id           = ""
              + vpc_peering_connection_id = ""
            },
        ]
        tags             = {
            "Code"    = "18181818"
            "Name"    = "production-route-private-subnet-3"
            "Owner"   = "BKRAJU"
            "Project" = "BKRPROD"
        }
        # (3 unchanged attributes hidden)
    }

Plan: 0 to add, 3 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 ProjectB %

bharathkumarraju@R77-NB193 ProjectB % terraform destroy -auto-approve
module.bharath_vpc_production.aws_route_table_association.public_routes[2]: Destroying... [id=rtbassoc-07f442ebdacb5e589]
module.bharath_vpc_production.aws_route_table_association.private_routes[2]: Destroying... [id=rtbassoc-005fb1d458f1688dd]
module.bharath_vpc_production.aws_route_table_association.public_routes[0]: Destroying... [id=rtbassoc-072bb1a41dd1995fc]
module.bharath_vpc_production.aws_route_table_association.private_routes[0]: Destroying... [id=rtbassoc-02d3d65cbfca29f17]
module.bharath_vpc_production.aws_route_table_association.private_routes[1]: Destroying... [id=rtbassoc-0f7a9e1db981ab1e2]
module.bharath_vpc_production.aws_route_table_association.public_routes[1]: Destroying... [id=rtbassoc-0cfa49db9e69c78b3]
module.prod_server.aws_instance.web_server: Destroying... [id=i-018c2a77145f08af5]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server: Destroying... [id=i-0aa0bc984ce581d17]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server: Destroying... [id=i-06aa3b885c8749185]
module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server: Destroying... [id=i-05287585a0ad21d7c]
module.bharath_vpc_production.aws_route_table_association.public_routes[2]: Destruction complete after 1s
module.bharath_vpc_production.aws_route_table_association.private_routes[1]: Destruction complete after 1s
module.bharath_vpc_production.aws_route_table_association.public_routes[0]: Destruction complete after 1s
module.bharath_vpc_production.aws_route_table_association.private_routes[2]: Destruction complete after 1s
module.bharath_vpc_production.aws_route_table_association.public_routes[1]: Destruction complete after 1s
module.bharath_vpc_production.aws_route_table_association.private_routes[0]: Destruction complete after 1s
module.bharath_vpc_production.aws_route_table.private_subnets[2]: Destroying... [id=rtb-06337d15b23812158]
module.bharath_vpc_production.aws_route_table.public_subnets: Destroying... [id=rtb-057807f5b65fd6d85]
module.bharath_vpc_production.aws_route_table.private_subnets[1]: Destroying... [id=rtb-079e6d28952ac8cb7]
module.bharath_vpc_production.aws_subnet.private_subnets[2]: Destroying... [id=subnet-0df5f318c03b9e0d6]
module.bharath_vpc_production.aws_route_table.private_subnets[0]: Destroying... [id=rtb-08fd3baffd4800dfc]
module.bharath_vpc_production.aws_subnet.private_subnets[1]: Destroying... [id=subnet-07998cb4d08d409a0]
module.bharath_vpc_production.aws_subnet.private_subnets[1]: Destruction complete after 3s
module.bharath_vpc_production.aws_subnet.private_subnets[2]: Destruction complete after 3s
module.bharath_vpc_production.aws_subnet.private_subnets[0]: Destroying... [id=subnet-0245981ecb43c01d7]
module.bharath_vpc_production.aws_route_table.private_subnets[2]: Destruction complete after 4s
module.bharath_vpc_production.aws_route_table.private_subnets[1]: Destruction complete after 4s
module.bharath_vpc_production.aws_route_table.public_subnets: Destruction complete after 4s
module.bharath_vpc_production.aws_route_table.private_subnets[0]: Destruction complete after 4s
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Destroying... [id=nat-01cede30c9d34cead]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Destroying... [id=nat-0eeed7a8b458fdb18]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Destroying... [id=nat-005528ff27483e6b6]
module.bharath_vpc_production.aws_internet_gateway.main: Destroying... [id=igw-010d5fd859088eafb]
module.bharath_vpc_production.aws_subnet.private_subnets[0]: Destruction complete after 2s
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server: Still destroying... [id=i-0aa0bc984ce581d17, 10s elapsed]
module.prod_server.aws_instance.web_server: Still destroying... [id=i-018c2a77145f08af5, 10s elapsed]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server: Still destroying... [id=i-06aa3b885c8749185, 10s elapsed]
module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server: Still destroying... [id=i-05287585a0ad21d7c, 10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still destroying... [id=nat-01cede30c9d34cead, 10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0eeed7a8b458fdb18, 10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still destroying... [id=nat-005528ff27483e6b6, 10s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-010d5fd859088eafb, 10s elapsed]
module.prod_server.aws_instance.web_server: Still destroying... [id=i-018c2a77145f08af5, 20s elapsed]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server: Still destroying... [id=i-0aa0bc984ce581d17, 20s elapsed]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server: Still destroying... [id=i-06aa3b885c8749185, 20s elapsed]
module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server: Still destroying... [id=i-05287585a0ad21d7c, 20s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0eeed7a8b458fdb18, 20s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still destroying... [id=nat-01cede30c9d34cead, 20s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still destroying... [id=nat-005528ff27483e6b6, 20s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-010d5fd859088eafb, 20s elapsed]
module.prod_server.aws_instance.web_server: Still destroying... [id=i-018c2a77145f08af5, 30s elapsed]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server: Still destroying... [id=i-0aa0bc984ce581d17, 30s elapsed]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server: Still destroying... [id=i-06aa3b885c8749185, 30s elapsed]
module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server: Still destroying... [id=i-05287585a0ad21d7c, 30s elapsed]
module.prod_server.aws_instance.web_server: Destruction complete after 35s
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still destroying... [id=nat-01cede30c9d34cead, 30s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0eeed7a8b458fdb18, 30s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still destroying... [id=nat-005528ff27483e6b6, 30s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-010d5fd859088eafb, 30s elapsed]
module.prod_server.aws_security_group.webserver: Destroying... [id=sg-0702c13bb9d7b2a23]
module.prod_server.aws_security_group.webserver: Destruction complete after 2s
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server: Still destroying... [id=i-06aa3b885c8749185, 40s elapsed]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server: Still destroying... [id=i-0aa0bc984ce581d17, 40s elapsed]
module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server: Still destroying... [id=i-05287585a0ad21d7c, 40s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still destroying... [id=nat-01cede30c9d34cead, 40s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0eeed7a8b458fdb18, 40s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still destroying... [id=nat-005528ff27483e6b6, 40s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-010d5fd859088eafb, 40s elapsed]
module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server: Still destroying... [id=i-05287585a0ad21d7c, 50s elapsed]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server: Still destroying... [id=i-06aa3b885c8749185, 50s elapsed]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server: Still destroying... [id=i-0aa0bc984ce581d17, 50s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still destroying... [id=nat-005528ff27483e6b6, 50s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0eeed7a8b458fdb18, 50s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still destroying... [id=nat-01cede30c9d34cead, 50s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-010d5fd859088eafb, 50s elapsed]
module.server_loop_foreach["subnet-074629c5765468657"].aws_instance.web_server: Destruction complete after 57s
module.server_loop_foreach["subnet-074629c5765468657"].aws_security_group.webserver: Destroying... [id=sg-04fd500fba563f028]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_instance.web_server: Destruction complete after 57s
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_instance.web_server: Destruction complete after 57s
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_security_group.webserver: Destroying... [id=sg-0d43f65ab4d30c182]
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_security_group.webserver: Destroying... [id=sg-0d84116441e7cf15e]
module.server_loop_foreach["subnet-0a7b031d3e7b30064"].aws_security_group.webserver: Destruction complete after 2s
module.server_loop_foreach["subnet-074629c5765468657"].aws_security_group.webserver: Destruction complete after 2s
module.server_loop_foreach["subnet-0f2f3783276e3689e"].aws_security_group.webserver: Destruction complete after 2s
module.server_loop_count[1].aws_instance.web_server: Destroying... [id=i-08d72b0508cc42a6d]
module.server_loop_count[2].aws_instance.web_server: Destroying... [id=i-03cc91698956b2753]
module.server_loop_count[0].aws_instance.web_server: Destroying... [id=i-01cf2abc4731a3a05]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Destruction complete after 56s
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still destroying... [id=nat-005528ff27483e6b6, 1m0s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still destroying... [id=nat-0eeed7a8b458fdb18, 1m0s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-010d5fd859088eafb, 1m0s elapsed]
module.server_loop_count[1].aws_instance.web_server: Still destroying... [id=i-08d72b0508cc42a6d, 10s elapsed]
module.server_loop_count[2].aws_instance.web_server: Still destroying... [id=i-03cc91698956b2753, 10s elapsed]
module.server_loop_count[0].aws_instance.web_server: Still destroying... [id=i-01cf2abc4731a3a05, 10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Destruction complete after 1m7s
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Destruction complete after 1m8s
module.bharath_vpc_production.aws_eip.nat[1]: Destroying... [id=eipalloc-0ee6e935fab6c2a29]
module.bharath_vpc_production.aws_eip.nat[2]: Destroying... [id=eipalloc-034ddc0dfd63ff251]
module.bharath_vpc_production.aws_eip.nat[0]: Destroying... [id=eipalloc-03b5f27a9f7a7eb41]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-010d5fd859088eafb, 1m10s elapsed]
module.bharath_vpc_production.aws_eip.nat[0]: Destruction complete after 3s
module.bharath_vpc_production.aws_eip.nat[2]: Destruction complete after 3s
module.bharath_vpc_production.aws_eip.nat[1]: Destruction complete after 3s
module.server_loop_count[1].aws_instance.web_server: Still destroying... [id=i-08d72b0508cc42a6d, 20s elapsed]
module.server_loop_count[0].aws_instance.web_server: Still destroying... [id=i-01cf2abc4731a3a05, 20s elapsed]
module.server_loop_count[2].aws_instance.web_server: Still destroying... [id=i-03cc91698956b2753, 20s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-010d5fd859088eafb, 1m20s elapsed]
module.server_loop_count[1].aws_instance.web_server: Still destroying... [id=i-08d72b0508cc42a6d, 30s elapsed]
module.server_loop_count[2].aws_instance.web_server: Still destroying... [id=i-03cc91698956b2753, 30s elapsed]
module.server_loop_count[0].aws_instance.web_server: Still destroying... [id=i-01cf2abc4731a3a05, 30s elapsed]
module.server_loop_count[1].aws_instance.web_server: Destruction complete after 35s
module.server_loop_count[1].aws_security_group.webserver: Destroying... [id=sg-083e25a83280f8248]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-010d5fd859088eafb, 1m30s elapsed]
module.server_loop_count[1].aws_security_group.webserver: Destruction complete after 2s
module.server_loop_count[2].aws_instance.web_server: Still destroying... [id=i-03cc91698956b2753, 40s elapsed]
module.server_loop_count[0].aws_instance.web_server: Still destroying... [id=i-01cf2abc4731a3a05, 40s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-010d5fd859088eafb, 1m40s elapsed]
module.server_loop_count[0].aws_instance.web_server: Still destroying... [id=i-01cf2abc4731a3a05, 50s elapsed]
module.server_loop_count[2].aws_instance.web_server: Still destroying... [id=i-03cc91698956b2753, 50s elapsed]
module.bharath_vpc_production.aws_internet_gateway.main: Still destroying... [id=igw-010d5fd859088eafb, 1m50s elapsed]
module.server_loop_count[0].aws_instance.web_server: Destruction complete after 57s
module.server_loop_count[0].aws_security_group.webserver: Destroying... [id=sg-0901509c16723f10a]
module.server_loop_count[2].aws_instance.web_server: Destruction complete after 58s
module.server_loop_count[2].aws_security_group.webserver: Destroying... [id=sg-01de2f459bce92733]
module.bharath_vpc_production.aws_internet_gateway.main: Destruction complete after 1m53s
module.server_loop_count[0].aws_security_group.webserver: Destruction complete after 3s
module.server_loop_count[2].aws_security_group.webserver: Destruction complete after 2s
module.bharath_vpc_production.aws_subnet.public_subnets[1]: Destroying... [id=subnet-0a7b031d3e7b30064]
module.bharath_vpc_production.aws_subnet.public_subnets[0]: Destroying... [id=subnet-0f2f3783276e3689e]
module.bharath_vpc_production.aws_subnet.public_subnets[2]: Destroying... [id=subnet-074629c5765468657]
module.bharath_vpc_production.aws_subnet.public_subnets[1]: Destruction complete after 2s
module.bharath_vpc_production.aws_subnet.public_subnets[2]: Destruction complete after 2s
module.bharath_vpc_production.aws_subnet.public_subnets[0]: Destruction complete after 2s
module.bharath_vpc_production.aws_vpc.main: Destroying... [id=vpc-0c61f9299df461257]
module.bharath_vpc_production.aws_vpc.main: Destruction complete after 1s

Destroy complete! Resources: 38 destroyed.
bharathkumarraju@R77-NB193 ProjectB %
