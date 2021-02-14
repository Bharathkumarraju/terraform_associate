Added another private subnet, we should add another public subnet

bharathkumarraju@R77-NB193 Demo26_TF_modules1 % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.aws_availability_zones.available: Refreshing state...
aws_eip.nat[0]: Refreshing state... [id=eipalloc-0e1fd57130df03123]
aws_eip.nat[1]: Refreshing state... [id=eipalloc-0e8fbc79b2d81b003]
aws_vpc.main: Refreshing state... [id=vpc-042ef9372b287ca9a]
aws_internet_gateway.main: Refreshing state... [id=igw-0423d529ee2718535]
aws_subnet.public_subnets[1]: Refreshing state... [id=subnet-0303e7a2094ca45ff]
aws_subnet.public_subnets[0]: Refreshing state... [id=subnet-05f05648a5652fa92]
aws_subnet.private_subnets[1]: Refreshing state... [id=subnet-0ac1d9150cb1cad78]
aws_subnet.private_subnets[0]: Refreshing state... [id=subnet-0d10a63697bdc09c2]
aws_route_table.public_subnets: Refreshing state... [id=rtb-02e28ee2fb4c79ae8]
aws_nat_gateway.nat[0]: Refreshing state... [id=nat-09e78e3b13b4f65b4]
aws_nat_gateway.nat[1]: Refreshing state... [id=nat-0f5c35b91de9cadd6]
aws_route_table.private_subnets[1]: Refreshing state... [id=rtb-01ea007f8aa39de8a]
aws_route_table.private_subnets[0]: Refreshing state... [id=rtb-03ba331d20265de71]
aws_route_table_association.public_routes[0]: Refreshing state... [id=rtbassoc-089ad5a428dccbb83]
aws_route_table_association.public_routes[1]: Refreshing state... [id=rtbassoc-0f074d33282c10276]
aws_route_table_association.private_routes[0]: Refreshing state... [id=rtbassoc-004f16be4a3fe75cb]
aws_route_table_association.private_routes[1]: Refreshing state... [id=rtbassoc-0a3495dddc079a2aa]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create
  ~ update in-place

Terraform will perform the following actions:

  # aws_eip.nat[2] will be created
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
          + "Name"    = "Dev-nat-eip-3"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc                  = true
    }

  # aws_nat_gateway.nat[2] will be created
  + resource "aws_nat_gateway" "nat" {
      + allocation_id        = (known after apply)
      + id                   = (known after apply)
      + network_interface_id = (known after apply)
      + private_ip           = (known after apply)
      + public_ip            = (known after apply)
      + subnet_id            = (known after apply)
      + tags                 = {
          + "Name"    = "Dev-nat-gw-3"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
    }

  # aws_route_table.private_subnets[0] will be updated in-place
  ~ resource "aws_route_table" "private_subnets" {
        id               = "rtb-03ba331d20265de71"
        owner_id         = "172586632398"
        propagating_vgws = []
      ~ route            = [
          - {
              - cidr_block                = "0.0.0.0/0"
              - egress_only_gateway_id    = ""
              - gateway_id                = ""
              - instance_id               = ""
              - ipv6_cidr_block           = ""
              - local_gateway_id          = ""
              - nat_gateway_id            = "nat-09e78e3b13b4f65b4"
              - network_interface_id      = ""
              - transit_gateway_id        = ""
              - vpc_endpoint_id           = ""
              - vpc_peering_connection_id = ""
            },
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = "nat-09e78e3b13b4f65b4"
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
            "Name"    = "Dev-route-private-subnet-1"
            "Owner"   = "BD"
            "Project" = "Phoenix"
        }
        vpc_id           = "vpc-042ef9372b287ca9a"
    }

  # aws_route_table.private_subnets[1] will be updated in-place
  ~ resource "aws_route_table" "private_subnets" {
        id               = "rtb-01ea007f8aa39de8a"
        owner_id         = "172586632398"
        propagating_vgws = []
      ~ route            = [
          - {
              - cidr_block                = "0.0.0.0/0"
              - egress_only_gateway_id    = ""
              - gateway_id                = ""
              - instance_id               = ""
              - ipv6_cidr_block           = ""
              - local_gateway_id          = ""
              - nat_gateway_id            = "nat-0f5c35b91de9cadd6"
              - network_interface_id      = ""
              - transit_gateway_id        = ""
              - vpc_endpoint_id           = ""
              - vpc_peering_connection_id = ""
            },
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = "nat-0f5c35b91de9cadd6"
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
            "Name"    = "Dev-route-private-subnet-2"
            "Owner"   = "BD"
            "Project" = "Phoenix"
        }
        vpc_id           = "vpc-042ef9372b287ca9a"
    }

  # aws_route_table.private_subnets[2] will be created
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
          + "Name"    = "Dev-route-private-subnet-3"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id           = "vpc-042ef9372b287ca9a"
    }

  # aws_route_table_association.private_routes[2] will be created
  + resource "aws_route_table_association" "private_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_route_table_association.public_routes[2] will be created
  + resource "aws_route_table_association" "public_routes" {
      + id             = (known after apply)
      + route_table_id = "rtb-02e28ee2fb4c79ae8"
      + subnet_id      = (known after apply)
    }

  # aws_subnet.private_subnets[2] will be created
  + resource "aws_subnet" "private_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.13.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "Dev-private-subnet-3"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id                          = "vpc-042ef9372b287ca9a"
    }

  # aws_subnet.public_subnets[2] will be created
  + resource "aws_subnet" "public_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2c"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.0.3.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "Dev-public-subnet-3"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id                          = "vpc-042ef9372b287ca9a"
    }

Plan: 7 to add, 2 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo26_TF_modules1 %

