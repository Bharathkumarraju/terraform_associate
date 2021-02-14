bharathkumarraju@R77-NB193 Demo25_TF_remote_state % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

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
          + "Name"  = "Dev-vpc"
          + "Owner" = "BD"
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo25_TF_remote_state %

bharathkumarraju@R77-NB193 Demo25_TF_remote_state % terraform apply -auto-approve
aws_vpc.main: Creating...
aws_vpc.main: Still creating... [10s elapsed]
aws_vpc.main: Creation complete after 15s [id=vpc-0a420dbd0e03b7971]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 Demo25_TF_remote_state %


bharathkumarraju@R77-NB193 Demo25_TF_remote_state % terraform destroy -auto-approve
aws_vpc.main: Refreshing state... [id=vpc-0a420dbd0e03b7971]
aws_vpc.main: Destroying... [id=vpc-0a420dbd0e03b7971]
aws_vpc.main: Destruction complete after 3s

Destroy complete! Resources: 1 destroyed.
bharathkumarraju@R77-NB193 Demo25_TF_remote_state %
