another aws account ARN: arn:aws:iam::928157669239:role/TerraformMultiAccountRole

bharathkumarraju@R77-NB193 Demo24_multiple_aws_accounts % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_vpc.bharath_master_vpc will be created
  + resource "aws_vpc" "bharath_master_vpc" {
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
          + "Name" = "Bharath Master VPC"
        }
    }

  # aws_vpc.uat_vpc will be created
  + resource "aws_vpc" "uat_vpc" {
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
          + "Name" = "Bharath UAT VPC"
        }
    }

Plan: 2 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo24_multiple_aws_accounts %



bharathkumarraju@R77-NB193 Demo24_multiple_aws_accounts % terraform apply -auto-approve
aws_vpc.uat_vpc: Creating...
aws_vpc.bharath_master_vpc: Creating...
aws_vpc.uat_vpc: Creation complete after 3s [id=vpc-0322bc8b861cb9abc]
aws_vpc.bharath_master_vpc: Still creating... [10s elapsed]
aws_vpc.bharath_master_vpc: Creation complete after 15s [id=vpc-0022444c35c04afca]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 Demo24_multiple_aws_accounts %

bharathkumarraju@R77-NB193 Demo24_multiple_aws_accounts % terraform destroy -auto-approve
aws_vpc.uat_vpc: Refreshing state... [id=vpc-0322bc8b861cb9abc]
aws_vpc.bharath_master_vpc: Refreshing state... [id=vpc-0022444c35c04afca]
aws_vpc.uat_vpc: Destroying... [id=vpc-0322bc8b861cb9abc]
aws_vpc.uat_vpc: Destruction complete after 0s
aws_vpc.bharath_master_vpc: Destroying... [id=vpc-0022444c35c04afca]
aws_vpc.bharath_master_vpc: Destruction complete after 1s

Destroy complete! Resources: 2 destroyed.
bharathkumarraju@R77-NB193 Demo24_multiple_aws_accounts %

