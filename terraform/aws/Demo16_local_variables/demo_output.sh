bharathkumarraju@R77-NB193 Demo16_local_variables % terraform plan

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_eip.static_ip will be created
  + resource "aws_eip" "static_ip" {
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
          + "Environment"  = "DEV"
          + "Name"         = "Test EIP"
          + "Region_full"  = "THis Resource in Asia Pacific (Singapore) consists of 3 AZs"
          + "Region_info"  = "This resource is in Asia Pacific (Singapore) consits of 3 Azs"
          + "code"         = "123456"
          + "manager"      = "hanuman"
          + "planet"       = "venus"
          + "project_name" = "bharathscloud running in Asia Pacific (Singapore)"
        }
      + vpc                  = (known after apply)
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
          + "AZ_names"       = "ap-southeast-1a,ap-southeast-1b,ap-southeast-1c"
          + "Name"           = "Test VPC"
          + "Region_info_v1" = "This resource is in Asia Pacific (Singapore) consits of 3 Azs"
          + "Region_info_v2" = "THis Resource in Asia Pacific (Singapore) consists of 3 AZs"
        }
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + public_ip = (known after apply)
  + vpc_id    = (known after apply)

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo16_local_variables %


bharathkumarraju@R77-NB193 Demo16_local_variables % terraform apply -auto-approve
aws_vpc.main: Creating...
aws_eip.static_ip: Creating...
aws_eip.static_ip: Creation complete after 1s [id=eipalloc-0353bfa7e5a19be6a]
aws_vpc.main: Creation complete after 2s [id=vpc-0c01dc1cf9010daf6]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

public_ip = "18.139.127.63"
vpc_id = "vpc-0c01dc1cf9010daf6"
bharathkumarraju@R77-NB193 Demo16_local_variables %

bharathkumarraju@R77-NB193 Demo16_local_variables % terraform destroy -auto-approve
aws_vpc.main: Destroying... [id=vpc-0c01dc1cf9010daf6]
aws_eip.static_ip: Destroying... [id=eipalloc-0353bfa7e5a19be6a]
aws_vpc.main: Destruction complete after 0s
aws_eip.static_ip: Destruction complete after 0s

Destroy complete! Resources: 2 destroyed.
bharathkumarraju@R77-NB193 Demo16_local_variables %

