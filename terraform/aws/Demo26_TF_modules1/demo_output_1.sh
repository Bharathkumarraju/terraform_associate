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

bharathkumarraju@R77-NB193 Demo26_TF_modules1 % terraform apply -auto-approve
data.aws_availability_zones.available: Refreshing state...
aws_vpc.main: Refreshing state... [id=vpc-042ef9372b287ca9a]
aws_eip.nat[1]: Refreshing state... [id=eipalloc-0e8fbc79b2d81b003]
aws_eip.nat[0]: Refreshing state... [id=eipalloc-0e1fd57130df03123]
aws_subnet.public_subnets[0]: Refreshing state... [id=subnet-05f05648a5652fa92]
aws_subnet.public_subnets[1]: Refreshing state... [id=subnet-0303e7a2094ca45ff]
aws_internet_gateway.main: Refreshing state... [id=igw-0423d529ee2718535]
aws_subnet.private_subnets[1]: Refreshing state... [id=subnet-0ac1d9150cb1cad78]
aws_subnet.private_subnets[0]: Refreshing state... [id=subnet-0d10a63697bdc09c2]
aws_route_table.public_subnets: Refreshing state... [id=rtb-02e28ee2fb4c79ae8]
aws_nat_gateway.nat[1]: Refreshing state... [id=nat-0f5c35b91de9cadd6]
aws_nat_gateway.nat[0]: Refreshing state... [id=nat-09e78e3b13b4f65b4]
aws_route_table_association.public_routes[1]: Refreshing state... [id=rtbassoc-0f074d33282c10276]
aws_route_table_association.public_routes[0]: Refreshing state... [id=rtbassoc-089ad5a428dccbb83]
aws_route_table.private_subnets[1]: Refreshing state... [id=rtb-01ea007f8aa39de8a]
aws_route_table.private_subnets[0]: Refreshing state... [id=rtb-03ba331d20265de71]
aws_route_table_association.private_routes[0]: Refreshing state... [id=rtbassoc-004f16be4a3fe75cb]
aws_route_table_association.private_routes[1]: Refreshing state... [id=rtbassoc-0a3495dddc079a2aa]
aws_subnet.public_subnets[2]: Creating...
aws_eip.nat[2]: Creating...
aws_subnet.private_subnets[2]: Creating...
aws_subnet.private_subnets[2]: Creation complete after 4s [id=subnet-03ced905ce2559f65]
aws_eip.nat[2]: Creation complete after 4s [id=eipalloc-0d86e0524fbebc4ec]
aws_subnet.public_subnets[2]: Still creating... [10s elapsed]
aws_subnet.public_subnets[2]: Creation complete after 17s [id=subnet-04ed7a970f5711e75]
aws_nat_gateway.nat[2]: Creating...
aws_route_table_association.public_routes[2]: Creating...
aws_route_table_association.public_routes[2]: Creation complete after 2s [id=rtbassoc-00a7e21f28fc45206]
aws_nat_gateway.nat[2]: Still creating... [10s elapsed]
aws_nat_gateway.nat[2]: Still creating... [20s elapsed]
aws_nat_gateway.nat[2]: Still creating... [30s elapsed]
aws_nat_gateway.nat[2]: Still creating... [40s elapsed]
aws_nat_gateway.nat[2]: Still creating... [50s elapsed]
aws_nat_gateway.nat[2]: Still creating... [1m0s elapsed]
aws_nat_gateway.nat[2]: Still creating... [1m10s elapsed]
aws_nat_gateway.nat[2]: Still creating... [1m20s elapsed]
aws_nat_gateway.nat[2]: Still creating... [1m30s elapsed]
aws_nat_gateway.nat[2]: Still creating... [1m40s elapsed]
aws_nat_gateway.nat[2]: Still creating... [1m50s elapsed]
aws_nat_gateway.nat[2]: Creation complete after 1m56s [id=nat-044a9f331e50cf89e]
aws_route_table.private_subnets[2]: Creating...
aws_route_table.private_subnets[1]: Modifying... [id=rtb-01ea007f8aa39de8a]
aws_route_table.private_subnets[0]: Modifying... [id=rtb-03ba331d20265de71]
aws_route_table.private_subnets[1]: Modifications complete after 3s [id=rtb-01ea007f8aa39de8a]
aws_route_table.private_subnets[0]: Modifications complete after 3s [id=rtb-03ba331d20265de71]
aws_route_table.private_subnets[2]: Creation complete after 4s [id=rtb-050978de194b2f22f]
aws_route_table_association.private_routes[2]: Creating...
aws_route_table_association.private_routes[2]: Creation complete after 2s [id=rtbassoc-043817962c3ad3f3a]

Apply complete! Resources: 7 added, 2 changed, 0 destroyed.

Outputs:

private_subnet_ids = [
  "subnet-0d10a63697bdc09c2",
  "subnet-0ac1d9150cb1cad78",
  "subnet-03ced905ce2559f65",
]
public_subnet_ids = [
  "subnet-05f05648a5652fa92",
  "subnet-0303e7a2094ca45ff",
  "subnet-04ed7a970f5711e75",
]
vpc_cidr = 10.0.0.0/16
vpc_id = vpc-042ef9372b287ca9a
bharathkumarraju@R77-NB193 Demo26_TF_modules1 %



bharathkumarraju@R77-NB193 Demo26_TF_modules1 % terraform destroy -auto-approve
data.aws_availability_zones.available: Refreshing state...
aws_vpc.main: Refreshing state... [id=vpc-042ef9372b287ca9a]
aws_eip.nat[2]: Refreshing state... [id=eipalloc-0d86e0524fbebc4ec]
aws_eip.nat[1]: Refreshing state... [id=eipalloc-0e8fbc79b2d81b003]
aws_eip.nat[0]: Refreshing state... [id=eipalloc-0e1fd57130df03123]
aws_internet_gateway.main: Refreshing state... [id=igw-0423d529ee2718535]
aws_subnet.public_subnets[0]: Refreshing state... [id=subnet-05f05648a5652fa92]
aws_subnet.public_subnets[2]: Refreshing state... [id=subnet-04ed7a970f5711e75]
aws_subnet.public_subnets[1]: Refreshing state... [id=subnet-0303e7a2094ca45ff]
aws_subnet.private_subnets[1]: Refreshing state... [id=subnet-0ac1d9150cb1cad78]
aws_subnet.private_subnets[2]: Refreshing state... [id=subnet-03ced905ce2559f65]
aws_subnet.private_subnets[0]: Refreshing state... [id=subnet-0d10a63697bdc09c2]
aws_route_table.public_subnets: Refreshing state... [id=rtb-02e28ee2fb4c79ae8]
aws_nat_gateway.nat[0]: Refreshing state... [id=nat-09e78e3b13b4f65b4]
aws_nat_gateway.nat[2]: Refreshing state... [id=nat-044a9f331e50cf89e]
aws_nat_gateway.nat[1]: Refreshing state... [id=nat-0f5c35b91de9cadd6]
aws_route_table_association.public_routes[2]: Refreshing state... [id=rtbassoc-00a7e21f28fc45206]
aws_route_table_association.public_routes[1]: Refreshing state... [id=rtbassoc-0f074d33282c10276]
aws_route_table_association.public_routes[0]: Refreshing state... [id=rtbassoc-089ad5a428dccbb83]
aws_route_table.private_subnets[1]: Refreshing state... [id=rtb-01ea007f8aa39de8a]
aws_route_table.private_subnets[0]: Refreshing state... [id=rtb-03ba331d20265de71]
aws_route_table.private_subnets[2]: Refreshing state... [id=rtb-050978de194b2f22f]
aws_route_table_association.private_routes[2]: Refreshing state... [id=rtbassoc-043817962c3ad3f3a]
aws_route_table_association.private_routes[1]: Refreshing state... [id=rtbassoc-0a3495dddc079a2aa]
aws_route_table_association.private_routes[0]: Refreshing state... [id=rtbassoc-004f16be4a3fe75cb]
aws_route_table_association.public_routes[1]: Destroying... [id=rtbassoc-0f074d33282c10276]
aws_route_table_association.private_routes[1]: Destroying... [id=rtbassoc-0a3495dddc079a2aa]
aws_route_table_association.private_routes[2]: Destroying... [id=rtbassoc-043817962c3ad3f3a]
aws_route_table_association.private_routes[0]: Destroying... [id=rtbassoc-004f16be4a3fe75cb]
aws_route_table_association.public_routes[0]: Destroying... [id=rtbassoc-089ad5a428dccbb83]
aws_route_table_association.public_routes[2]: Destroying... [id=rtbassoc-00a7e21f28fc45206]
aws_route_table_association.private_routes[2]: Destruction complete after 1s
aws_route_table_association.private_routes[1]: Destruction complete after 1s
aws_route_table_association.public_routes[1]: Destruction complete after 1s
aws_route_table_association.public_routes[0]: Destruction complete after 1s
aws_route_table_association.private_routes[0]: Destruction complete after 1s
aws_route_table_association.public_routes[2]: Destruction complete after 1s
aws_route_table.private_subnets[0]: Destroying... [id=rtb-03ba331d20265de71]
aws_route_table.public_subnets: Destroying... [id=rtb-02e28ee2fb4c79ae8]
aws_route_table.private_subnets[1]: Destroying... [id=rtb-01ea007f8aa39de8a]
aws_subnet.private_subnets[0]: Destroying... [id=subnet-0d10a63697bdc09c2]
aws_subnet.private_subnets[2]: Destroying... [id=subnet-03ced905ce2559f65]
aws_subnet.private_subnets[1]: Destroying... [id=subnet-0ac1d9150cb1cad78]
aws_route_table.private_subnets[2]: Destroying... [id=rtb-050978de194b2f22f]
aws_subnet.private_subnets[1]: Destruction complete after 2s
aws_subnet.private_subnets[2]: Destruction complete after 2s
aws_subnet.private_subnets[0]: Destruction complete after 2s
aws_route_table.public_subnets: Destruction complete after 3s
aws_route_table.private_subnets[2]: Destruction complete after 3s
aws_internet_gateway.main: Destroying... [id=igw-0423d529ee2718535]
aws_route_table.private_subnets[1]: Destruction complete after 3s
aws_route_table.private_subnets[0]: Destruction complete after 3s
aws_nat_gateway.nat[1]: Destroying... [id=nat-0f5c35b91de9cadd6]
aws_nat_gateway.nat[0]: Destroying... [id=nat-09e78e3b13b4f65b4]
aws_nat_gateway.nat[2]: Destroying... [id=nat-044a9f331e50cf89e]
aws_internet_gateway.main: Still destroying... [id=igw-0423d529ee2718535, 10s elapsed]
aws_nat_gateway.nat[0]: Still destroying... [id=nat-09e78e3b13b4f65b4, 10s elapsed]
aws_nat_gateway.nat[1]: Still destroying... [id=nat-0f5c35b91de9cadd6, 10s elapsed]
aws_nat_gateway.nat[2]: Still destroying... [id=nat-044a9f331e50cf89e, 10s elapsed]
aws_internet_gateway.main: Still destroying... [id=igw-0423d529ee2718535, 20s elapsed]
aws_nat_gateway.nat[0]: Still destroying... [id=nat-09e78e3b13b4f65b4, 20s elapsed]
aws_nat_gateway.nat[2]: Still destroying... [id=nat-044a9f331e50cf89e, 20s elapsed]
aws_nat_gateway.nat[1]: Still destroying... [id=nat-0f5c35b91de9cadd6, 20s elapsed]
aws_internet_gateway.main: Still destroying... [id=igw-0423d529ee2718535, 30s elapsed]
aws_nat_gateway.nat[0]: Still destroying... [id=nat-09e78e3b13b4f65b4, 30s elapsed]
aws_nat_gateway.nat[2]: Still destroying... [id=nat-044a9f331e50cf89e, 30s elapsed]
aws_nat_gateway.nat[1]: Still destroying... [id=nat-0f5c35b91de9cadd6, 30s elapsed]
aws_internet_gateway.main: Still destroying... [id=igw-0423d529ee2718535, 40s elapsed]
aws_nat_gateway.nat[0]: Still destroying... [id=nat-09e78e3b13b4f65b4, 40s elapsed]
aws_nat_gateway.nat[2]: Still destroying... [id=nat-044a9f331e50cf89e, 40s elapsed]
aws_nat_gateway.nat[1]: Still destroying... [id=nat-0f5c35b91de9cadd6, 40s elapsed]
aws_nat_gateway.nat[0]: Destruction complete after 48s
aws_internet_gateway.main: Still destroying... [id=igw-0423d529ee2718535, 50s elapsed]
aws_nat_gateway.nat[1]: Still destroying... [id=nat-0f5c35b91de9cadd6, 50s elapsed]
aws_nat_gateway.nat[2]: Still destroying... [id=nat-044a9f331e50cf89e, 50s elapsed]
aws_nat_gateway.nat[2]: Destruction complete after 58s
aws_internet_gateway.main: Still destroying... [id=igw-0423d529ee2718535, 1m0s elapsed]
aws_nat_gateway.nat[1]: Still destroying... [id=nat-0f5c35b91de9cadd6, 1m0s elapsed]
aws_internet_gateway.main: Destruction complete after 1m7s
aws_nat_gateway.nat[1]: Destruction complete after 1m10s
aws_eip.nat[2]: Destroying... [id=eipalloc-0d86e0524fbebc4ec]
aws_subnet.public_subnets[0]: Destroying... [id=subnet-05f05648a5652fa92]
aws_eip.nat[1]: Destroying... [id=eipalloc-0e8fbc79b2d81b003]
aws_subnet.public_subnets[1]: Destroying... [id=subnet-0303e7a2094ca45ff]
aws_subnet.public_subnets[2]: Destroying... [id=subnet-04ed7a970f5711e75]
aws_eip.nat[0]: Destroying... [id=eipalloc-0e1fd57130df03123]
aws_subnet.public_subnets[2]: Destruction complete after 2s
aws_subnet.public_subnets[1]: Destruction complete after 2s
aws_eip.nat[2]: Destruction complete after 2s
aws_subnet.public_subnets[0]: Destruction complete after 2s
aws_vpc.main: Destroying... [id=vpc-042ef9372b287ca9a]
aws_eip.nat[1]: Destruction complete after 2s
aws_eip.nat[0]: Destruction complete after 2s
aws_vpc.main: Destruction complete after 1s

Destroy complete! Resources: 24 destroyed.
bharathkumarraju@R77-NB193 Demo26_TF_modules1 %
