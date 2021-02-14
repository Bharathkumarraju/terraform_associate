bharathkumarraju@R77-NB193 ProjectA % terraform init
Initializing modules...
- bharath_vpc_staging in ../modules/aws_network

Initializing the backend...

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
bharathkumarraju@R77-NB193 ProjectA %


bharathkumarraju@R77-NB193 ProjectA % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

module.bharath_vpc_staging.data.aws_availability_zones.available: Refreshing state...
module.bharath_vpc.data.aws_availability_zones.available: Refreshing state...
module.bharath_vpc.aws_vpc.main: Refreshing state... [id=vpc-05db25a34abd9314f]
module.bharath_vpc.aws_eip.nat[1]: Refreshing state... [id=eipalloc-03b7ff2fa0967ff79]
module.bharath_vpc.aws_eip.nat[2]: Refreshing state... [id=eipalloc-0b51f9e18ffc4f542]
module.bharath_vpc.aws_eip.nat[0]: Refreshing state... [id=eipalloc-0022a97cf8e628a80]
module.bharath_vpc.aws_internet_gateway.main: Refreshing state... [id=igw-06b917355f834afbd]
module.bharath_vpc.aws_subnet.public_subnets[0]: Refreshing state... [id=subnet-0c3fbb9d6be8b9f23]
module.bharath_vpc.aws_subnet.public_subnets[1]: Refreshing state... [id=subnet-0b04690157cb546be]
module.bharath_vpc.aws_subnet.public_subnets[2]: Refreshing state... [id=subnet-089a3ee58eda2997b]
module.bharath_vpc.aws_subnet.private_subnets[0]: Refreshing state... [id=subnet-0888fbcf20d053f1c]
module.bharath_vpc.aws_subnet.private_subnets[1]: Refreshing state... [id=subnet-06bb6bec92921c1f2]
module.bharath_vpc.aws_subnet.private_subnets[2]: Refreshing state... [id=subnet-0d23138b69e41ada3]
module.bharath_vpc.aws_nat_gateway.nat[1]: Refreshing state... [id=nat-08228ea0617babf57]
module.bharath_vpc.aws_nat_gateway.nat[0]: Refreshing state... [id=nat-0cfbfdb61898583f1]
module.bharath_vpc.aws_nat_gateway.nat[2]: Refreshing state... [id=nat-0fcae179736cc14b0]
module.bharath_vpc.aws_route_table.public_subnets: Refreshing state... [id=rtb-06f78f46b637b3b8b]
module.bharath_vpc.aws_route_table_association.public_routes[2]: Refreshing state... [id=rtbassoc-0e7a8916e62a2060d]
module.bharath_vpc.aws_route_table_association.public_routes[0]: Refreshing state... [id=rtbassoc-0c505b6b401ed1990]
module.bharath_vpc.aws_route_table_association.public_routes[1]: Refreshing state... [id=rtbassoc-039b5744949fe4178]
module.bharath_vpc.aws_route_table.private_subnets[1]: Refreshing state... [id=rtb-0b73120bcf0a48e36]
module.bharath_vpc.aws_route_table.private_subnets[2]: Refreshing state... [id=rtb-03f966964677f7a53]
module.bharath_vpc.aws_route_table.private_subnets[0]: Refreshing state... [id=rtb-050319a8a88b44432]
module.bharath_vpc.aws_route_table_association.private_routes[0]: Refreshing state... [id=rtbassoc-08ace975f737caa11]
module.bharath_vpc.aws_route_table_association.private_routes[1]: Refreshing state... [id=rtbassoc-044f585ec8c83b037]
module.bharath_vpc.aws_route_table_association.private_routes[2]: Refreshing state... [id=rtbassoc-09ad3b9909ececab8]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create
  ~ update in-place

Terraform will perform the following actions:

  # module.bharath_vpc.aws_route_table.private_subnets[0] will be updated in-place
  ~ resource "aws_route_table" "private_subnets" {
        id               = "rtb-050319a8a88b44432"
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
              - nat_gateway_id            = "nat-0cfbfdb61898583f1"
              - network_interface_id      = ""
              - transit_gateway_id        = ""
              - vpc_endpoint_id           = ""
              - vpc_peering_connection_id = ""
            },
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = "nat-0cfbfdb61898583f1"
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
        vpc_id           = "vpc-05db25a34abd9314f"
    }

  # module.bharath_vpc.aws_route_table.private_subnets[1] will be updated in-place
  ~ resource "aws_route_table" "private_subnets" {
        id               = "rtb-0b73120bcf0a48e36"
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
              - nat_gateway_id            = "nat-08228ea0617babf57"
              - network_interface_id      = ""
              - transit_gateway_id        = ""
              - vpc_endpoint_id           = ""
              - vpc_peering_connection_id = ""
            },
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = "nat-08228ea0617babf57"
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
        vpc_id           = "vpc-05db25a34abd9314f"
    }

  # module.bharath_vpc.aws_route_table.private_subnets[2] will be updated in-place
  ~ resource "aws_route_table" "private_subnets" {
        id               = "rtb-03f966964677f7a53"
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
              - nat_gateway_id            = "nat-0fcae179736cc14b0"
              - network_interface_id      = ""
              - transit_gateway_id        = ""
              - vpc_endpoint_id           = ""
              - vpc_peering_connection_id = ""
            },
          + {
              + cidr_block                = "0.0.0.0/0"
              + egress_only_gateway_id    = ""
              + gateway_id                = "nat-0fcae179736cc14b0"
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
            "Name"    = "Dev-route-private-subnet-3"
            "Owner"   = "BD"
            "Project" = "Phoenix"
        }
        vpc_id           = "vpc-05db25a34abd9314f"
    }

  # module.bharath_vpc_staging.aws_internet_gateway.main will be created
  + resource "aws_internet_gateway" "main" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name"    = "staging-igw"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id   = (known after apply)
    }

  # module.bharath_vpc_staging.aws_route_table.public_subnets will be created
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
          + "Name"    = "staging-route-public-subnets"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id           = (known after apply)
    }

  # module.bharath_vpc_staging.aws_route_table_association.public_routes[0] will be created
  + resource "aws_route_table_association" "public_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.bharath_vpc_staging.aws_route_table_association.public_routes[1] will be created
  + resource "aws_route_table_association" "public_routes" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # module.bharath_vpc_staging.aws_subnet.public_subnets[0] will be created
  + resource "aws_subnet" "public_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.100.1.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "staging-public-subnet-1"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id                          = (known after apply)
    }

  # module.bharath_vpc_staging.aws_subnet.public_subnets[1] will be created
  + resource "aws_subnet" "public_subnets" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "eu-west-2b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "10.100.2.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = true
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Name"    = "staging-public-subnet-2"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
      + vpc_id                          = (known after apply)
    }

  # module.bharath_vpc_staging.aws_vpc.main will be created
  + resource "aws_vpc" "main" {
      + arn                              = (known after apply)
      + assign_generated_ipv6_cidr_block = false
      + cidr_block                       = "10.100.0.0/16"
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
          + "Name"    = "staging-vpc"
          + "Owner"   = "BD"
          + "Project" = "Phoenix"
        }
    }

Plan: 7 to add, 3 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 ProjectA %


bharathkumarraju@R77-NB193 ProjectA % terraform apply -auto-approve
module.bharath_vpc.data.aws_availability_zones.available: Refreshing state...
module.bharath_vpc.aws_eip.nat[2]: Refreshing state... [id=eipalloc-0b51f9e18ffc4f542]
module.bharath_vpc.aws_eip.nat[0]: Refreshing state... [id=eipalloc-0022a97cf8e628a80]
module.bharath_vpc.aws_vpc.main: Refreshing state... [id=vpc-05db25a34abd9314f]
module.bharath_vpc_staging.data.aws_availability_zones.available: Refreshing state...
module.bharath_vpc.aws_eip.nat[1]: Refreshing state... [id=eipalloc-03b7ff2fa0967ff79]
module.bharath_vpc.aws_internet_gateway.main: Refreshing state... [id=igw-06b917355f834afbd]
module.bharath_vpc.aws_subnet.public_subnets[0]: Refreshing state... [id=subnet-0c3fbb9d6be8b9f23]
module.bharath_vpc.aws_subnet.private_subnets[0]: Refreshing state... [id=subnet-0888fbcf20d053f1c]
module.bharath_vpc.aws_subnet.private_subnets[2]: Refreshing state... [id=subnet-0d23138b69e41ada3]
module.bharath_vpc.aws_subnet.public_subnets[1]: Refreshing state... [id=subnet-0b04690157cb546be]
module.bharath_vpc.aws_subnet.private_subnets[1]: Refreshing state... [id=subnet-06bb6bec92921c1f2]
module.bharath_vpc.aws_subnet.public_subnets[2]: Refreshing state... [id=subnet-089a3ee58eda2997b]
module.bharath_vpc.aws_route_table.public_subnets: Refreshing state... [id=rtb-06f78f46b637b3b8b]
module.bharath_vpc.aws_nat_gateway.nat[2]: Refreshing state... [id=nat-0fcae179736cc14b0]
module.bharath_vpc.aws_nat_gateway.nat[1]: Refreshing state... [id=nat-08228ea0617babf57]
module.bharath_vpc.aws_nat_gateway.nat[0]: Refreshing state... [id=nat-0cfbfdb61898583f1]
module.bharath_vpc.aws_route_table_association.public_routes[2]: Refreshing state... [id=rtbassoc-0e7a8916e62a2060d]
module.bharath_vpc.aws_route_table_association.public_routes[1]: Refreshing state... [id=rtbassoc-039b5744949fe4178]
module.bharath_vpc.aws_route_table_association.public_routes[0]: Refreshing state... [id=rtbassoc-0c505b6b401ed1990]
module.bharath_vpc.aws_route_table.private_subnets[1]: Refreshing state... [id=rtb-0b73120bcf0a48e36]
module.bharath_vpc.aws_route_table.private_subnets[2]: Refreshing state... [id=rtb-03f966964677f7a53]
module.bharath_vpc.aws_route_table.private_subnets[0]: Refreshing state... [id=rtb-050319a8a88b44432]
module.bharath_vpc.aws_route_table_association.private_routes[0]: Refreshing state... [id=rtbassoc-08ace975f737caa11]
module.bharath_vpc.aws_route_table_association.private_routes[1]: Refreshing state... [id=rtbassoc-044f585ec8c83b037]
module.bharath_vpc.aws_route_table_association.private_routes[2]: Refreshing state... [id=rtbassoc-09ad3b9909ececab8]
module.bharath_vpc_staging.aws_vpc.main: Creating...
module.bharath_vpc.aws_route_table.private_subnets[0]: Modifying... [id=rtb-050319a8a88b44432]
module.bharath_vpc.aws_route_table.private_subnets[1]: Modifying... [id=rtb-0b73120bcf0a48e36]
module.bharath_vpc.aws_route_table.private_subnets[2]: Modifying... [id=rtb-03f966964677f7a53]
module.bharath_vpc.aws_route_table.private_subnets[0]: Modifications complete after 4s [id=rtb-050319a8a88b44432]
module.bharath_vpc.aws_route_table.private_subnets[2]: Modifications complete after 4s [id=rtb-03f966964677f7a53]
module.bharath_vpc.aws_route_table.private_subnets[1]: Modifications complete after 4s [id=rtb-0b73120bcf0a48e36]
module.bharath_vpc_staging.aws_vpc.main: Still creating... [10s elapsed]
module.bharath_vpc_staging.aws_vpc.main: Creation complete after 13s [id=vpc-0524d228ba03566e8]
module.bharath_vpc_staging.aws_internet_gateway.main: Creating...
module.bharath_vpc_staging.aws_subnet.public_subnets[1]: Creating...
module.bharath_vpc_staging.aws_subnet.public_subnets[0]: Creating...
module.bharath_vpc_staging.aws_internet_gateway.main: Still creating... [10s elapsed]
module.bharath_vpc_staging.aws_subnet.public_subnets[0]: Still creating... [10s elapsed]
module.bharath_vpc_staging.aws_subnet.public_subnets[1]: Still creating... [10s elapsed]
module.bharath_vpc_staging.aws_internet_gateway.main: Creation complete after 11s [id=igw-037f9aef001d80037]
module.bharath_vpc_staging.aws_route_table.public_subnets: Creating...
module.bharath_vpc_staging.aws_subnet.public_subnets[0]: Creation complete after 15s [id=subnet-08f73f0e7a9700079]
module.bharath_vpc_staging.aws_route_table.public_subnets: Creation complete after 4s [id=rtb-0b4cd158ba6281ad0]
module.bharath_vpc_staging.aws_subnet.public_subnets[1]: Creation complete after 17s [id=subnet-04692042a94f588bc]
module.bharath_vpc_staging.aws_route_table_association.public_routes[1]: Creating...
module.bharath_vpc_staging.aws_route_table_association.public_routes[0]: Creating...
module.bharath_vpc_staging.aws_route_table_association.public_routes[1]: Creation complete after 2s [id=rtbassoc-06eec84fa90df1164]
module.bharath_vpc_staging.aws_route_table_association.public_routes[0]: Creation complete after 2s [id=rtbassoc-007ac490e13b45e8f]

Apply complete! Resources: 7 added, 3 changed, 0 destroyed.

Outputs:

bk_private_subnet_ids = [
  "subnet-0888fbcf20d053f1c",
  "subnet-06bb6bec92921c1f2",
  "subnet-0d23138b69e41ada3",
]
bk_private_subnet_ids_staging = []
bk_public_subnet_ids = [
  "subnet-0c3fbb9d6be8b9f23",
  "subnet-0b04690157cb546be",
  "subnet-089a3ee58eda2997b",
]
bk_public_subnet_ids_staging = [
  "subnet-08f73f0e7a9700079",
  "subnet-04692042a94f588bc",
]
bk_vpc_cidr = 10.0.0.0/16
bk_vpc_cidr_staging = 10.100.0.0/16
bk_vpc_id = vpc-05db25a34abd9314f
bk_vpc_id_staging = vpc-0524d228ba03566e8
bharathkumarraju@R77-NB193 ProjectA %

