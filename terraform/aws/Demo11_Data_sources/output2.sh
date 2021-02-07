bharathkumarraju@R77-NB193 Demo11_Data_sources % export AWS_DEFAULT_REGION="us-east-1"
bharathkumarraju@R77-NB193 Demo11_Data_sources % terraform apply -auto-approve
data.aws_caller_identity.current: Refreshing state...
data.aws_region.current: Refreshing state...
data.aws_availability_zones.list_zones: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

aws_account_id = 172586632398
azs = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c",
  "us-east-1d",
  "us-east-1e",
  "us-east-1f",
]
current_region = US East (N. Virginia)
current_region_id = us-east-1
current_region_name = us-east-1
bharathkumarraju@R77-NB193 Demo11_Data_sources %


bharathkumarraju@R77-NB193 Demo11_Data_sources % terraform apply -auto-approve
data.aws_region.current: Refreshing state...
data.aws_availability_zones.list_zones: Refreshing state...
data.aws_vpc.bk_vpc: Refreshing state...
data.aws_vpcs.all_vpcs: Refreshing state...
data.aws_caller_identity.current: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

all_vpcs = [
  "vpc-00e6cc4e0d9777aff",
  "vpc-0447a41e0fece5b79",
]
aws_account_id = 172586632398
azs = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c",
  "us-east-1d",
  "us-east-1e",
  "us-east-1f",
]
bk_vpc = vpc-0447a41e0fece5b79
current_region = US East (N. Virginia)
current_region_id = us-east-1
current_region_name = us-east-1
bharathkumarraju@R77-NB193 Demo11_Data_sources %


bharathkumarraju@R77-NB193 Demo11_Data_sources % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.aws_caller_identity.current: Refreshing state...
data.aws_region.current: Refreshing state...
data.aws_availability_zones.list_zones: Refreshing state...
data.aws_vpc.bk_vpc: Refreshing state...
data.aws_vpcs.all_vpcs: Refreshing state...

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_subnet.subnet1 will be created
  + resource "aws_subnet" "subnet1" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-1d"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.3.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Info" = "AZ: us-east-1d in the region US East (N. Virginia)"
          + "Name" = "Bharath_test1"
        }
      + vpc_id                          = "vpc-0447a41e0fece5b79"
    }

  # aws_subnet.subnet2 will be created
  + resource "aws_subnet" "subnet2" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = false
      + availability_zone               = "us-east-1e"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = "172.16.4.0/24"
      + id                              = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = false
      + owner_id                        = (known after apply)
      + tags                            = {
          + "Info" = "AZ: us-east-1e in the region US East (N. Virginia)"
          + "Name" = "Bharath_test2"
        }
      + vpc_id                          = "vpc-0447a41e0fece5b79"
    }

Plan: 2 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo11_Data_sources %


bharathkumarraju@R77-NB193 Demo11_Data_sources % terraform apply -auto-approve
'data.aws_caller_identity.current: Refreshing state...
data.aws_availability_zones.list_zones: Refreshing state...
data.aws_region.current: Refreshing state...
data.aws_vpcs.all_vpcs: Refreshing state...
data.aws_vpc.bk_vpc: Refreshing state...
aws_subnet.subnet1: Creating...
aws_subnet.subnet2: Creating...
aws_subnet.subnet2: Creation complete after 4s [id=subnet-00d3dd663ec6e3d2f]
aws_subnet.subnet1: Creation complete after 4s [id=subnet-07b0e6c620ce25507]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

all_vpcs = [
  "vpc-00e6cc4e0d9777aff",
  "vpc-0447a41e0fece5b79",
]
aws_account_id = 172586632398
azs = [
  "us-east-1a",
  "us-east-1b",
  "us-east-1c",
  "us-east-1d",
  "us-east-1e",
  "us-east-1f",
]
bk_vpc = vpc-0447a41e0fece5b79
current_region = US East (N. Virginia)
current_region_id = us-east-1
current_region_name = us-east-1
bharathkumarraju@R77-NB193 Demo11_Data_sources %

