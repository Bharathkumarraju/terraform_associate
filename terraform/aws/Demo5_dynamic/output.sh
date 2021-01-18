bharathkumarraju@R77-NB193 Demo5_dynamic % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_security_group.rajusweb will be created
  + resource "aws_security_group" "rajusweb" {
      + arn                    = (known after apply)
      + description            = "SG for web server"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "allow all ports"
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
              + description      = "allow port 1000"
              + from_port        = 1000
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 1000
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "allow port 443"
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
              + description      = "allow port 7000"
              + from_port        = 7000
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "udp"
              + security_groups  = []
              + self             = false
              + to_port          = 7000
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "allow port 80"
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "allow port 8000"
              + from_port        = 8000
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "udp"
              + security_groups  = []
              + self             = false
              + to_port          = 8000
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "allow port 8080"
              + from_port        = 8080
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 8080
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "allow port 8443"
              + from_port        = 8443
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 8443
            },
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = "allow port 9000"
              + from_port        = 9000
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "udp"
              + security_groups  = []
              + self             = false
              + to_port          = 9000
            },
          + {
              + cidr_blocks      = [
                  + "10.0.0.0/16",
                ]
              + description      = "allow port SSH"
              + from_port        = 22
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 22
            },
        ]
      + name                   = "webserver-SG"
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"  = "rajus web SG"
          + "Owner" = "Bharath raju"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 1 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo5_dynamic % terraform apply -auto-approve
aws_security_group.rajusweb: Creating...
aws_security_group.rajusweb: Creation complete after 2s [id=sg-05190d26c67465771]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 Demo5_dynamic %