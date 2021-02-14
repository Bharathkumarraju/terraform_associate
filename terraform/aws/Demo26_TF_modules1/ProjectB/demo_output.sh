bharathkumarraju@R77-NB193 ProjectB % terraform init
Initializing modules...
- bharath_vpc_production in ../modules/aws_network
- prod_server in ../modules/aws_testserver

Initializing the backend...

Initializing provider plugins...
- Checking for available provider plugins...
- Downloading plugin for provider "aws" (hashicorp/aws) 3.28.0...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 3.28"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumarraju@R77-NB193 ProjectB %




------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create
 <= read (data resources)

Terraform will perform the following actions:

  # module.bharath_vpc_production.aws_eip.nat[0] will be created
  + resource "aws_eip" "nat" {
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
          + "Code"    = "18181818"
          + "Name"    = "production-nat-eip-1"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc                  = true
    }

  # module.bharath_vpc_production.aws_eip.nat[1] will be created
  + resource "aws_eip" "nat" {
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
          + "Code"    = "18181818"
          + "Name"    = "production-nat-eip-2"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc                  = true
    }

  # module.bharath_vpc_production.aws_eip.nat[2] will be created
  + resource "aws_eip" "nat" {
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
          + "Code"    = "18181818"
          + "Name"    = "production-nat-eip-3"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc                  = true
    }

  # module.bharath_vpc_production.aws_internet_gateway.main will be created
  + resource "aws_internet_gateway" "main" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Code"    = "18181818"
          + "Name"    = "production-igw"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc_id   = (known after apply)
    }

  # module.bharath_vpc_production.aws_nat_gateway.nat[0] will be created
  + resource "aws_nat_gateway" "nat" {
      + allocation_id        = (known after apply)
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Code"    = "18181818"
          + "Name"    = "production-nat-gw-1"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
    }

  # module.bharath_vpc_production.aws_nat_gateway.nat[1] will be created
  + resource "aws_nat_gateway" "nat" {
      + allocation_id        = (known after apply)
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Code"    = "18181818"
          + "Name"    = "production-nat-gw-2"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
    }

  # module.bharath_vpc_production.aws_nat_gateway.nat[2] will be created
  + resource "aws_nat_gateway" "nat" {
      + allocation_id        = (known after apply)
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Code"    = "18181818"
          + "Name"    = "production-nat-gw-3"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
    }

  # module.bharath_vpc_production.aws_route_table.private_subnets[0] will be created
  + resource "aws_route_table" "private_subnets" {
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = (known after apply)
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
      + tags             = {
          + "Code"    = "18181818"
          + "Name"    = "production-route-private-subnet-1"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc_id           = (known after apply)
    }

  # module.bharath_vpc_production.aws_route_table.private_subnets[1] will be created
  + resource "aws_route_table" "private_subnets" {
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = (known after apply)
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
      + tags             = {
          + "Code"    = "18181818"
          + "Name"    = "production-route-private-subnet-2"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc_id           = (known after apply)
    }

  # module.bharath_vpc_production.aws_route_table.private_subnets[2] will be created
  + resource "aws_route_table" "private_subnets" {
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = (known after apply)
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
      + tags             = {
          + "Code"    = "18181818"
          + "Name"    = "production-route-private-subnet-3"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc_id           = (known after apply)
    }

  # module.bharath_vpc_production.aws_route_table.public_subnets will be created
  + resource "aws_route_table" "public_subnets" {
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = (known after apply)
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
      + tags             = {
          + "Code"    = "18181818"
          + "Name"    = "production-route-public-subnets"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc_id           = (known after apply)
    }

  # module.bharath_vpc_production.aws_route_table_association.private_routes[0] will be created
  + resource "aws_route_table_association" "private_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.bharath_vpc_production.aws_route_table_association.private_routes[1] will be created
  + resource "aws_route_table_association" "private_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.bharath_vpc_production.aws_route_table_association.private_routes[2] will be created
  + resource "aws_route_table_association" "private_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.bharath_vpc_production.aws_route_table_association.public_routes[0] will be created
  + resource "aws_route_table_association" "public_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.bharath_vpc_production.aws_route_table_association.public_routes[1] will be created
  + resource "aws_route_table_association" "public_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.bharath_vpc_production.aws_route_table_association.public_routes[2] will be created
  + resource "aws_route_table_association" "public_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.bharath_vpc_production.aws_subnet.private_subnets[0] will be created
  + resource "aws_subnet" "private_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.200.11.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Code"    = "18181818"
          + "Name"    = "production-private-subnet-1"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc_id                          = (known after apply)
    }

  # module.bharath_vpc_production.aws_subnet.private_subnets[1] will be created
  + resource "aws_subnet" "private_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.200.12.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Code"    = "18181818"
          + "Name"    = "production-private-subnet-2"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc_id                          = (known after apply)
    }

  # module.bharath_vpc_production.aws_subnet.private_subnets[2] will be created
  + resource "aws_subnet" "private_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.200.13.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Code"    = "18181818"
          + "Name"    = "production-private-subnet-3"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc_id                          = (known after apply)
    }

  # module.bharath_vpc_production.aws_subnet.public_subnets[0] will be created
  + resource "aws_subnet" "public_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.200.1.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Code"    = "18181818"
          + "Name"    = "production-public-subnet-1"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc_id                          = (known after apply)
    }

  # module.bharath_vpc_production.aws_subnet.public_subnets[1] will be created
  + resource "aws_subnet" "public_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.200.2.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Code"    = "18181818"
          + "Name"    = "production-public-subnet-2"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc_id                          = (known after apply)
    }

  # module.bharath_vpc_production.aws_subnet.public_subnets[2] will be created
  + resource "aws_subnet" "public_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.200.3.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Code"    = "18181818"
          + "Name"    = "production-public-subnet-3"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
      + vpc_id                          = (known after apply)
    }

  # module.bharath_vpc_production.aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "10.200.0.0/16"
      + default_network_acl_id           = (known after apply)
      + default_route_table_id           = (known after apply)
      + default_security_group_id        = (known after apply)
      + dhcp_options_id                  = (known after apply)
      + enable_classiclink               = (known after apply)
      + enable_classiclink_dns_support   = (known after apply)
      + enable_dns_hostnames             = (known after apply)
      + enable_dns_support               = true
      + id                               = (known after apply)
      + instance_tenancy                 = "default"
      + ipv6_association_id              = (known after apply)
      + ipv6_cidr_block                  = (known after apply)
      + main_route_table_id              = (known after apply)
      + owner_id                         = (known after apply)
      + tags                             = {
          + "Code"    = "18181818"
          + "Name"    = "production-vpc"
          + "Owner"   = "BKRAJU"
          + "Project" = "BKRPROD"
        }
    }

  # module.prod_server.data.aws_subnet.web will be read during apply
  # (config refers to values not yet known)
 <= data "aws_subnet" "web"  {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = (known after apply)
      + availability_zone               = (known after apply)
      + availability_zone_id            = (known after apply)
      + cidr_block                      = (known after apply)
      + customer_owned_ipv4_pool        = (known after apply)
      + default_for_az                  = (known after apply)
      + id                              = (known after apply)
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

  # module.prod_server.aws_instance.web_server will be created
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
      + subnet_id                    = (known after apply)
      + tags                         = (known after apply)
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

  # module.prod_server.aws_security_group.webserver will be created
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
      + name_prefix            = "BK-PROD WebServer SG-"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"  = "BK-PROD-web-server-sg"
          + "Owner" = "Denis Astahov"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 26 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.




module.bharath_vpc_production.aws_vpc.main: Creating...
module.bharath_vpc_production.aws_eip.nat[1]: Creation complete after 3s [id=eipalloc-0a4115b4a65aa5a24]
module.bharath_vpc_production.aws_eip.nat[0]: Creation complete after 3s [id=eipalloc-0f0c185cd32a9951b]
module.bharath_vpc_production.aws_eip.nat[2]: Creation complete after 3s [id=eipalloc-08c6ce4bcab3a9d98]
module.bharath_vpc_production.aws_vpc.main: Still creating... [10s elapsed]
module.bharath_vpc_production.aws_vpc.main: Creation complete after 13s [id=vpc-08f0230d579c78ee3]
module.bharath_vpc_production.aws_internet_gateway.main: Creating...
module.bharath_vpc_production.aws_subnet.private_subnets[1]: Creating...
module.bharath_vpc_production.aws_subnet.public_subnets[1]: Creating...
module.bharath_vpc_production.aws_subnet.private_subnets[2]: Creating...
module.bharath_vpc_production.aws_subnet.public_subnets[0]: Creating...
module.bharath_vpc_production.aws_subnet.public_subnets[2]: Creating...
module.bharath_vpc_production.aws_subnet.private_subnets[0]: Creating...
module.bharath_vpc_production.aws_subnet.private_subnets[2]: Creation complete after 3s [id=subnet-0aa901dd00a4e23a4]
module.bharath_vpc_production.aws_subnet.private_subnets[0]: Creation complete after 3s [id=subnet-0cfd42637b913f7d5]
module.bharath_vpc_production.aws_subnet.private_subnets[1]: Creation complete after 3s [id=subnet-0595fae3c83ec28d2]
module.bharath_vpc_production.aws_internet_gateway.main: Creation complete after 6s [id=igw-08af11cebb01931be]
module.bharath_vpc_production.aws_route_table.public_subnets: Creating...
module.bharath_vpc_production.aws_subnet.public_subnets[1]: Still creating... [10s elapsed]
module.bharath_vpc_production.aws_subnet.public_subnets[0]: Still creating... [10s elapsed]
module.bharath_vpc_production.aws_subnet.public_subnets[2]: Still creating... [10s elapsed]
module.bharath_vpc_production.aws_route_table.public_subnets: Creation complete after 5s [id=rtb-0d3c5441cf22826f5]
module.bharath_vpc_production.aws_subnet.public_subnets[2]: Creation complete after 15s [id=subnet-081d824c82c8f49ef]
module.bharath_vpc_production.aws_subnet.public_subnets[1]: Creation complete after 15s [id=subnet-0aa173b20d95a1d09]
module.bharath_vpc_production.aws_subnet.public_subnets[0]: Creation complete after 16s [id=subnet-0f951ace5bf856a20]
module.prod_server.data.aws_subnet.web: Refreshing state...
module.bharath_vpc_production.aws_route_table_association.public_routes[0]: Creating...
module.bharath_vpc_production.aws_route_table_association.public_routes[2]: Creating...
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Creating...
module.bharath_vpc_production.aws_route_table_association.public_routes[1]: Creating...
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Creating...
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Creating...
module.prod_server.aws_security_group.webserver: Creating...
module.bharath_vpc_production.aws_route_table_association.public_routes[2]: Creation complete after 2s [id=rtbassoc-00ca43248a120ab5d]
module.bharath_vpc_production.aws_route_table_association.public_routes[0]: Creation complete after 2s [id=rtbassoc-00f3769ad0f3e67f0]
module.bharath_vpc_production.aws_route_table_association.public_routes[1]: Creation complete after 2s [id=rtbassoc-0d2905e9837209118]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still creating... [10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still creating... [10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still creating... [10s elapsed]
module.prod_server.aws_security_group.webserver: Creation complete after 10s [id=sg-06fefa01a686ffc84]
module.prod_server.aws_instance.web_server: Creating...
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still creating... [20s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still creating... [20s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still creating... [20s elapsed]
module.prod_server.aws_instance.web_server: Still creating... [10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still creating... [30s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still creating... [30s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still creating... [30s elapsed]
module.prod_server.aws_instance.web_server: Creation complete after 20s [id=i-06ae2cf4b3041b60c]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still creating... [40s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still creating... [40s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still creating... [40s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still creating... [50s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still creating... [50s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still creating... [50s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still creating... [1m0s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still creating... [1m0s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still creating... [1m0s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still creating... [1m10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still creating... [1m10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still creating... [1m10s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still creating... [1m20s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still creating... [1m20s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still creating... [1m20s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still creating... [1m30s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still creating... [1m30s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still creating... [1m30s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still creating... [1m40s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still creating... [1m40s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still creating... [1m40s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Still creating... [1m50s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still creating... [1m50s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Still creating... [1m50s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[1]: Creation complete after 1m53s [id=nat-058b68ff8a3e02d8a]
module.bharath_vpc_production.aws_nat_gateway.nat[0]: Creation complete after 1m54s [id=nat-00dd0a23bd628e6e8]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Still creating... [2m0s elapsed]
module.bharath_vpc_production.aws_nat_gateway.nat[2]: Creation complete after 2m5s [id=nat-056044f98fff6a0d9]
module.bharath_vpc_production.aws_route_table.private_subnets[0]: Creating...
module.bharath_vpc_production.aws_route_table.private_subnets[1]: Creating...
module.bharath_vpc_production.aws_route_table.private_subnets[2]: Creating...
module.bharath_vpc_production.aws_route_table.private_subnets[1]: Creation complete after 5s [id=rtb-0a4de8f53dd90b843]
module.bharath_vpc_production.aws_route_table.private_subnets[2]: Creation complete after 5s [id=rtb-03e09a7fe636aba4e]
module.bharath_vpc_production.aws_route_table.private_subnets[0]: Creation complete after 6s [id=rtb-057273ef71d0c2859]
module.bharath_vpc_production.aws_route_table_association.private_routes[2]: Creating...
module.bharath_vpc_production.aws_route_table_association.private_routes[0]: Creating...
module.bharath_vpc_production.aws_route_table_association.private_routes[1]: Creating...
module.bharath_vpc_production.aws_route_table_association.private_routes[2]: Creation complete after 1s [id=rtbassoc-07018d60cb11cf0f7]
module.bharath_vpc_production.aws_route_table_association.private_routes[1]: Creation complete after 1s [id=rtbassoc-0bea0b84d12d75507]
module.bharath_vpc_production.aws_route_table_association.private_routes[0]: Creation complete after 1s [id=rtbassoc-05c2be3477cb4052b]

Apply complete! Resources: 26 added, 0 changed, 0 destroyed.

Outputs:

server_ip = 18.134.139.88
bharathkumarraju@R77-NB193 ProjectB %



