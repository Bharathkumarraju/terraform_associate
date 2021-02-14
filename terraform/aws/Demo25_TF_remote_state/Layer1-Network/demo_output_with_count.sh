bharathkumarraju@R77-NB193 Layer1-Network % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.aws_availability_zones.available: Refreshing state...
aws_vpc.main: Refreshing state... [id=vpc-07cba897c0f666d2a]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_internet_gateway.main will be created
  + resource "aws_internet_gateway" "main" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name"  = "Dev-igw"
          + "Owner" = "BD"
        }
      + vpc_id   = "vpc-07cba897c0f666d2a"
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
          + "Name"  = "Dev-route-public-subnets"
          + "Owner" = "DB"
        }
      + vpc_id           = "vpc-07cba897c0f666d2a"
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
          + "Name"  = "Dev-public-1"
          + "Owner" = "BD"
        }
      + vpc_id                          = "vpc-07cba897c0f666d2a"
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
          + "Name"  = "Dev-public-2"
          + "Owner" = "BD"
        }
      + vpc_id                          = "vpc-07cba897c0f666d2a"
    }

Plan: 6 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Layer1-Network %



bharathkumarraju@R77-NB193 Layer1-Network % terraform apply -auto-approve
data.aws_availability_zones.available: Refreshing state...
aws_vpc.main: Refreshing state... [id=vpc-07cba897c0f666d2a]
aws_internet_gateway.main: Creating...
aws_subnet.public_subnets[0]: Creating...
aws_subnet.public_subnets[1]: Creating...
aws_internet_gateway.main: Creation complete after 6s [id=igw-03a1e005c20d273dc]
aws_route_table.public_subnets: Creating...
aws_subnet.public_subnets[0]: Still creating... [10s elapsed]
aws_subnet.public_subnets[1]: Still creating... [10s elapsed]
aws_route_table.public_subnets: Creation complete after 5s [id=rtb-0830ddda9bd3a9a2e]
aws_subnet.public_subnets[0]: Creation complete after 17s [id=subnet-0072e9cce123b0b41]
aws_subnet.public_subnets[1]: Creation complete after 17s [id=subnet-0ad8eee0042a65f64]
aws_route_table_association.public_routes[0]: Creating...
aws_route_table_association.public_routes[1]: Creating...
aws_route_table_association.public_routes[0]: Creation complete after 1s [id=rtbassoc-093b5a08954e1c62b]
aws_route_table_association.public_routes[1]: Creation complete after 1s [id=rtbassoc-024aa0acca93d1a7a]

Apply complete! Resources: 6 added, 0 changed, 0 destroyed.

Outputs:

public_subnet_ids = [
  "subnet-0072e9cce123b0b41",
  "subnet-0ad8eee0042a65f64",
]
vpc_cidr = 10.0.0.0/16
vpc_id = vpc-07cba897c0f666d2a
bharathkumarraju@R77-NB193 Layer1-Network %

