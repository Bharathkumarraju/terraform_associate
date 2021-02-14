bharathkumarraju@R77-NB193 Demo26_TF_modules1 % terraform init

Initializing the backend...

Successfully configured the backend "s3"! Terraform will automatically
use this backend unless the backend configuration changes.

Initializing provider plugins...

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
bharathkumarraju@R77-NB193 Demo26_TF_modules1 %


bharathkumarraju@R77-NB193 Demo26_TF_modules1 % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.aws_availability_zones.available: Refreshing state...

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_eip.nat[0] will be created
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
          + "Name"    = "Dev-nat-eip-1"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc                  = true
    }

  # aws_eip.nat[1] will be created
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
          + "Name"    = "Dev-nat-eip-2"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc                  = true
    }

  # aws_internet_gateway.main will be created
  + resource "aws_internet_gateway" "main" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name"    = "Dev-igw"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id   = (known after apply)
    }

  # aws_nat_gateway.nat[0] will be created
  + resource "aws_nat_gateway" "nat" {
      + allocation_id        = (known after apply)
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Name"    = "Dev-nat-gw-1"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
    }

  # aws_nat_gateway.nat[1] will be created
  + resource "aws_nat_gateway" "nat" {
      + allocation_id        = (known after apply)
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Name"    = "Dev-nat-gw-2"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
    }

  # aws_route_table.private_subnets[0] will be created
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
          + "Name"    = "Dev-route-private-subnet-1"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table.private_subnets[1] will be created
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
          + "Name"    = "Dev-route-private-subnet-2"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table.public_subnets will be created
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
          + "Name"    = "Dev-route-public-subnets"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table_association.private_routes[0] will be created
  + resource "aws_route_table_association" "private_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.private_routes[1] will be created
  + resource "aws_route_table_association" "private_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.public_routes[0] will be created
  + resource "aws_route_table_association" "public_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.public_routes[1] will be created
  + resource "aws_route_table_association" "public_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_subnet.private_subnets[0] will be created
  + resource "aws_subnet" "private_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.11.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "Dev-private-subnet-1"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_subnet.private_subnets[1] will be created
  + resource "aws_subnet" "private_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.12.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "Dev-private-subnet-2"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_subnet.public_subnets[0] will be created
  + resource "aws_subnet" "public_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.1.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "Dev-public-subnet-1"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_subnet.public_subnets[1] will be created
  + resource "aws_subnet" "public_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.2.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "Dev-public-subnet-2"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id                          = (known after apply)
    }

  # aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "10.0.0.0/16"
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
          + "Name"    = "Dev-vpc"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
    }

Plan: 17 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo26_TF_modules1 %


bharathkumarraju@R77-NB193 Demo26_TF_modules1 % terraform apply -auto-approve
data.aws_availability_zones.available: Refreshing state...
aws_eip.nat[1]: Creating...
aws_vpc.main: Creating...
aws_eip.nat[0]: Creating...
aws_eip.nat[0]: Creation complete after 5s [id=eipalloc-0e1fd57130df03123]
aws_eip.nat[1]: Creation complete after 5s [id=eipalloc-0e8fbc79b2d81b003]
aws_vpc.main: Still creating... [10s elapsed]
aws_vpc.main: Creation complete after 12s [id=vpc-042ef9372b287ca9a]
aws_internet_gateway.main: Creating...
aws_subnet.private_subnets[0]: Creating...
aws_subnet.public_subnets[0]: Creating...
aws_subnet.public_subnets[1]: Creating...
aws_subnet.private_subnets[1]: Creating...
aws_subnet.private_subnets[1]: Creation complete after 4s [id=subnet-0ac1d9150cb1cad78]
aws_subnet.private_subnets[0]: Creation complete after 4s [id=subnet-0d10a63697bdc09c2]
aws_internet_gateway.main: Creation complete after 6s [id=igw-0423d529ee2718535]
aws_route_table.public_subnets: Creating...
aws_subnet.public_subnets[0]: Still creating... [10s elapsed]
aws_subnet.public_subnets[1]: Still creating... [10s elapsed]
aws_route_table.public_subnets: Creation complete after 6s [id=rtb-02e28ee2fb4c79ae8]
aws_subnet.public_subnets[1]: Creation complete after 16s [id=subnet-0303e7a2094ca45ff]
aws_subnet.public_subnets[0]: Creation complete after 16s [id=subnet-05f05648a5652fa92]
aws_nat_gateway.nat[1]: Creating...
aws_nat_gateway.nat[0]: Creating...
aws_route_table_association.public_routes[1]: Creating...
aws_route_table_association.public_routes[0]: Creating...
aws_route_table_association.public_routes[0]: Creation complete after 1s [id=rtbassoc-089ad5a428dccbb83]
aws_route_table_association.public_routes[1]: Creation complete after 1s [id=rtbassoc-0f074d33282c10276]
aws_nat_gateway.nat[1]: Still creating... [10s elapsed]
aws_nat_gateway.nat[0]: Still creating... [10s elapsed]
aws_nat_gateway.nat[0]: Still creating... [20s elapsed]
aws_nat_gateway.nat[1]: Still creating... [20s elapsed]
aws_nat_gateway.nat[0]: Still creating... [30s elapsed]
aws_nat_gateway.nat[1]: Still creating... [30s elapsed]
aws_nat_gateway.nat[0]: Still creating... [40s elapsed]
aws_nat_gateway.nat[1]: Still creating... [40s elapsed]
aws_nat_gateway.nat[0]: Still creating... [50s elapsed]
aws_nat_gateway.nat[1]: Still creating... [50s elapsed]
aws_nat_gateway.nat[0]: Still creating... [1m0s elapsed]
aws_nat_gateway.nat[1]: Still creating... [1m0s elapsed]
aws_nat_gateway.nat[0]: Still creating... [1m10s elapsed]
aws_nat_gateway.nat[1]: Still creating... [1m10s elapsed]
aws_nat_gateway.nat[1]: Still creating... [1m20s elapsed]
aws_nat_gateway.nat[0]: Still creating... [1m20s elapsed]
aws_nat_gateway.nat[0]: Creation complete after 1m24s [id=nat-09e78e3b13b4f65b4]
aws_nat_gateway.nat[1]: Still creating... [1m30s elapsed]
aws_nat_gateway.nat[1]: Still creating... [1m40s elapsed]
aws_nat_gateway.nat[1]: Creation complete after 1m47s [id=nat-0f5c35b91de9cadd6]
aws_route_table.private_subnets[1]: Creating...
aws_route_table.private_subnets[0]: Creating...
aws_route_table.private_subnets[0]: Creation complete after 4s [id=rtb-03ba331d20265de71]
aws_route_table.private_subnets[1]: Creation complete after 4s [id=rtb-01ea007f8aa39de8a]
aws_route_table_association.private_routes[0]: Creating...
aws_route_table_association.private_routes[1]: Creating...
aws_route_table_association.private_routes[0]: Creation complete after 1s [id=rtbassoc-004f16be4a3fe75cb]
aws_route_table_association.private_routes[1]: Creation complete after 2s [id=rtbassoc-0a3495dddc079a2aa]

Apply complete! Resources: 17 added, 0 changed, 0 destroyed.

Outputs:

private_subnet_ids = [
  "subnet-0d10a63697bdc09c2",
  "subnet-0ac1d9150cb1cad78",
]
public_subnet_ids = [
  "subnet-05f05648a5652fa92",
  "subnet-0303e7a2094ca45ff",
]
vpc_cidr = 10.0.0.0/16
vpc_id = vpc-042ef9372b287ca9a
bharathkumarraju@R77-NB193 Demo26_TF_modules1 %