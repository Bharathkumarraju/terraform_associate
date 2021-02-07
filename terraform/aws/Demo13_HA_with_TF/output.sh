Initializing provider plugins...
- Checking for available provider plugins...
- Downloading plugin for provider "aws" (hashicorp/aws) 3.27.0...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 3.27"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumarraju@R77-NB193 Demo13_HA_with_TF % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.aws_ami.latest_amazon_linux: Refreshing state...
data.aws_availability_zones.working: Refreshing state...

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_autoscaling_group.web will be created
  + resource "aws_autoscaling_group" "web" {
      + arn                       = (known after apply)
      + availability_zones        = (known after apply)
      + default_cooldown          = (known after apply)
      + desired_capacity          = (known after apply)
      + force_delete              = false
      + health_check_grace_period = 300
      + health_check_type         = "ELB"
      + id                        = (known after apply)
      + launch_configuration      = (known after apply)
      + load_balancers            = (known after apply)
      + max_size                  = 3
      + metrics_granularity       = "1Minute"
      + min_elb_capacity          = 3
      + min_size                  = 3
      + name                      = (known after apply)
      + protect_from_scale_in     = false
      + service_linked_role_arn   = (known after apply)
      + vpc_zone_identifier       = (known after apply)
      + wait_for_capacity_timeout = "10m"

      + tag {
          + key                 = "Name"
          + propagate_at_launch = true
          + value               = "Webserver in ASG"
        }
      + tag {
          + key                 = "Owner"
          + propagate_at_launch = true
          + value               = "BHARATH"
        }
      + tag {
          + key                 = "TAGKEY"
          + propagate_at_launch = true
          + value               = "TAGVALUE"
        }
    }

  # aws_default_subnet.default_AZ2 will be created
  + resource "aws_default_subnet" "default_AZ2" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = (known after apply)
      + availability_zone               = "ap-southeast-1b"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = (known after apply)
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = (known after apply)
      + owner_id                        = (known after apply)
      + vpc_id                          = (known after apply)
    }

  # aws_default_subnet.default_az1 will be created
  + resource "aws_default_subnet" "default_az1" {
      + arn                             = (known after apply)
      + assign_ipv6_address_on_creation = (known after apply)
      + availability_zone               = "ap-southeast-1a"
      + availability_zone_id            = (known after apply)
      + cidr_block                      = (known after apply)
      + id                              = (known after apply)
      + ipv6_cidr_block                 = (known after apply)
      + ipv6_cidr_block_association_id  = (known after apply)
      + map_public_ip_on_launch         = (known after apply)
      + owner_id                        = (known after apply)
      + vpc_id                          = (known after apply)
    }

  # aws_elb.web will be created
  + resource "aws_elb" "web" {
      + arn                         = (known after apply)
      + availability_zones          = [
          + "ap-southeast-1a",
          + "ap-southeast-1b",
        ]
      + connection_draining         = false
      + connection_draining_timeout = 300
      + cross_zone_load_balancing   = true
      + dns_name                    = (known after apply)
      + id                          = (known after apply)
      + idle_timeout                = 60
      + instances                   = (known after apply)
      + internal                    = (known after apply)
      + name                        = "webserver-HA-ELB"
      + security_groups             = (known after apply)
      + source_security_group       = (known after apply)
      + source_security_group_id    = (known after apply)
      + subnets                     = (known after apply)
      + tags                        = {
          + "Name"  = "Web-server-HA-ELB"
          + "Owner" = "BHARATH"
        }
      + zone_id                     = (known after apply)

      + health_check {
          + healthy_threshold   = 2
          + interval            = 10
          + target              = "HTTP:80/"
          + timeout             = 3
          + unhealthy_threshold = 2
        }

      + listener {
          + instance_port     = 80
          + instance_protocol = "http"
          + lb_port           = 80
          + lb_protocol       = "http"
        }
    }

  # aws_launch_configuration.web will be created
  + resource "aws_launch_configuration" "web" {
      + arn                         = (known after apply)
      + associate_public_ip_address = false
      + ebs_optimized               = (known after apply)
      + enable_monitoring           = true
      + id                          = (known after apply)
      + image_id                    = "ami-0e2e44c03b85f58b3"
      + instance_type               = "t3.micro"
      + key_name                    = (known after apply)
      + name                        = (known after apply)
      + name_prefix                 = "Webserver-HA-LC-"
      + security_groups             = (known after apply)
      + user_data                   = "c11d902d725f11b5b4c709d53a3d2d9a06a2a333"

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + no_device             = (known after apply)
          + snapshot_id           = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_security_group.web will be created
  + resource "aws_security_group" "web" {
      + arn                    = (known after apply)
      + description            = "Managed by Terraform"
      + egress                 = [
          + {
              + cidr_blocks      = [
                  + "0.0.0.0/0",
                ]
              + description      = ""
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
              + description      = ""
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
              + description      = ""
              + from_port        = 80
              + ipv6_cidr_blocks = []
              + prefix_list_ids  = []
              + protocol         = "tcp"
              + security_groups  = []
              + self             = false
              + to_port          = 80
            },
        ]
      + name                   = "web Security Group"
      + name_prefix            = (known after apply)
      + owner_id               = (known after apply)
      + revoke_rules_on_delete = false
      + tags                   = {
          + "Name"  = "Web SG"
          + "Owner" = "BHARATH"
        }
      + vpc_id                 = (known after apply)
    }

Plan: 6 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo13_HA_with_TF % terraform apply -auto-approve
data.aws_ami.latest_amazon_linux: Refreshing state...
data.aws_availability_zones.working: Refreshing state...
aws_default_subnet.default_AZ2: Creating...
aws_default_subnet.default_az1: Creating...
aws_security_group.web: Creating...
aws_default_subnet.default_az1: Creation complete after 0s [id=subnet-a036c0e9]
aws_default_subnet.default_AZ2: Creation complete after 0s [id=subnet-54448733]
aws_security_group.web: Creation complete after 2s [id=sg-06dfe7c33ee9cef86]
aws_launch_configuration.web: Creating...
aws_elb.web: Creating...
aws_launch_configuration.web: Creation complete after 1s [id=Webserver-HA-LC-20210207092157452200000001]
aws_elb.web: Creation complete after 5s [id=webserver-HA-ELB]
aws_autoscaling_group.web: Creating...
aws_autoscaling_group.web: Still creating... [10s elapsed]
aws_autoscaling_group.web: Still creating... [20s elapsed]
aws_autoscaling_group.web: Still creating... [30s elapsed]
aws_autoscaling_group.web: Still creating... [40s elapsed]
aws_autoscaling_group.web: Still creating... [50s elapsed]
aws_autoscaling_group.web: Still creating... [1m0s elapsed]
aws_autoscaling_group.web: Still creating... [1m10s elapsed]
aws_autoscaling_group.web: Creation complete after 1m11s [id=ASG-Webserver-HA-LC-20210207092157452200000001]

Apply complete! Resources: 6 added, 0 changed, 0 destroyed.

Outputs:

web_lb_url = webserver-HA-ELB-1262381210.ap-southeast-1.elb.amazonaws.com
bharathkumarraju@R77-NB193 Demo13_HA_with_TF %



==== updated user_data.sh =================


bharathkumarraju@R77-NB193 Demo13_HA_with_TF % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.aws_availability_zones.working: Refreshing state...
data.aws_ami.latest_amazon_linux: Refreshing state...
aws_security_group.web: Refreshing state... [id=sg-06dfe7c33ee9cef86]
aws_default_subnet.default_az1: Refreshing state... [id=subnet-a036c0e9]
aws_default_subnet.default_AZ2: Refreshing state... [id=subnet-54448733]
aws_elb.web: Refreshing state... [id=webserver-HA-ELB]
aws_launch_configuration.web: Refreshing state... [id=Webserver-HA-LC-20210207092157452200000001]
aws_autoscaling_group.web: Refreshing state... [id=ASG-Webserver-HA-LC-20210207092157452200000001]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
+/- create replacement and then destroy

Terraform will perform the following actions:

  # aws_autoscaling_group.web must be replaced
+/- resource "aws_autoscaling_group" "web" {
      ~ arn                       = "arn:aws:autoscaling:ap-southeast-1:172586632398:autoScalingGroup:c9f54173-711a-4ce6-91be-5e3f31581eb0:autoScalingGroupName/ASG-Webserver-HA-LC-20210207092157452200000001" -> (known after apply)
      ~ availability_zones        = [
          - "ap-southeast-1a",
          - "ap-southeast-1b",
        ] -> (known after apply)
      - capacity_rebalance        = false -> null
      ~ default_cooldown          = 300 -> (known after apply)
      ~ desired_capacity          = 3 -> (known after apply)
      - enabled_metrics           = [] -> null
        force_delete              = false
        health_check_grace_period = 300
        health_check_type         = "ELB"
      ~ id                        = "ASG-Webserver-HA-LC-20210207092157452200000001" -> (known after apply)
      ~ launch_configuration      = "Webserver-HA-LC-20210207092157452200000001" -> (known after apply)
        load_balancers            = [
            "webserver-HA-ELB",
        ]
      - max_instance_lifetime     = 0 -> null
        max_size                  = 3
        metrics_granularity       = "1Minute"
        min_elb_capacity          = 3
        min_size                  = 3
      ~ name                      = "ASG-Webserver-HA-LC-20210207092157452200000001" -> (known after apply) # forces replacement
        protect_from_scale_in     = false
      ~ service_linked_role_arn   = "arn:aws:iam::172586632398:role/aws-service-role/autoscaling.amazonaws.com/AWSServiceRoleForAutoScaling" -> (known after apply)
      - suspended_processes       = [] -> null
      - target_group_arns         = [] -> null
      - termination_policies      = [] -> null
        vpc_zone_identifier       = [
            "subnet-54448733",
            "subnet-a036c0e9",
        ]
        wait_for_capacity_timeout = "10m"

        tag {
            key                 = "Name"
            propagate_at_launch = true
            value               = "Webserver in ASG"
        }
        tag {
            key                 = "Owner"
            propagate_at_launch = true
            value               = "BHARATH"
        }
        tag {
            key                 = "TAGKEY"
            propagate_at_launch = true
            value               = "TAGVALUE"
        }
    }

  # aws_launch_configuration.web must be replaced
+/- resource "aws_launch_configuration" "web" {
      ~ arn                              = "arn:aws:autoscaling:ap-southeast-1:172586632398:launchConfiguration:549fad2e-5a19-46a0-8a08-b5e84b8ac771:launchConfigurationName/Webserver-HA-LC-20210207092157452200000001" -> (known after apply)
        associate_public_ip_address      = false
      ~ ebs_optimized                    = false -> (known after apply)
        enable_monitoring                = true
      ~ id                               = "Webserver-HA-LC-20210207092157452200000001" -> (known after apply)
        image_id                         = "ami-0e2e44c03b85f58b3"
        instance_type                    = "t3.micro"
      + key_name                         = (known after apply)
      ~ name                             = "Webserver-HA-LC-20210207092157452200000001" -> (known after apply)
        name_prefix                      = "Webserver-HA-LC-"
        security_groups                  = [
            "sg-06dfe7c33ee9cef86",
        ]
      ~ user_data                        = "c11d902d725f11b5b4c709d53a3d2d9a06a2a333" -> "d4c5e3f5b951d577a370a52bc1840f7f56f519ac" # forces replacement
      - vpc_classic_link_security_groups = [] -> null

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + no_device             = (known after apply)
          + snapshot_id           = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

Plan: 2 to add, 0 to change, 2 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo13_HA_with_TF %


bharathkumarraju@R77-NB193 Demo13_HA_with_TF % terraform apply -auto-approve
data.aws_availability_zones.working: Refreshing state...
data.aws_ami.latest_amazon_linux: Refreshing state...
aws_security_group.web: Refreshing state... [id=sg-06dfe7c33ee9cef86]
aws_default_subnet.default_az1: Refreshing state... [id=subnet-a036c0e9]
aws_default_subnet.default_AZ2: Refreshing state... [id=subnet-54448733]
aws_elb.web: Refreshing state... [id=webserver-HA-ELB]
aws_launch_configuration.web: Refreshing state... [id=Webserver-HA-LC-20210207092157452200000001]
aws_autoscaling_group.web: Refreshing state... [id=ASG-Webserver-HA-LC-20210207092157452200000001]
aws_launch_configuration.web: Creating...
aws_launch_configuration.web: Creation complete after 0s [id=Webserver-HA-LC-20210207093450928200000001]
aws_autoscaling_group.web: Creating...
aws_autoscaling_group.web: Still creating... [10s elapsed]
aws_autoscaling_group.web: Still creating... [20s elapsed]
aws_autoscaling_group.web: Still creating... [30s elapsed]
aws_autoscaling_group.web: Still creating... [40s elapsed]
aws_autoscaling_group.web: Still creating... [50s elapsed]
aws_autoscaling_group.web: Creation complete after 51s [id=ASG-Webserver-HA-LC-20210207093450928200000001]
aws_autoscaling_group.web: Destroying... [id=ASG-Webserver-HA-LC-20210207092157452200000001]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207092157452200000001, 10s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207092157452200000001, 20s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207092157452200000001, 30s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207092157452200000001, 40s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207092157452200000001, 50s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207092157452200000001, 1m0s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207092157452200000001, 1m10s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207092157452200000001, 1m20s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207092157452200000001, 1m30s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207092157452200000001, 1m40s elapsed]
aws_autoscaling_group.web: Destruction complete after 1m49s
aws_launch_configuration.web: Destroying... [id=Webserver-HA-LC-20210207092157452200000001]
aws_launch_configuration.web: Destruction complete after 0s

Apply complete! Resources: 2 added, 0 changed, 2 destroyed.

Outputs:

web_lb_url = webserver-HA-ELB-1262381210.ap-southeast-1.elb.amazonaws.com
bharathkumarraju@R77-NB193 Demo13_HA_with_TF %


bharathkumarraju@R77-NB193 Demo13_HA_with_TF % terraform destroy -auto-approve
data.aws_availability_zones.working: Refreshing state...
data.aws_ami.latest_amazon_linux: Refreshing state...
aws_security_group.web: Refreshing state... [id=sg-06dfe7c33ee9cef86]
aws_default_subnet.default_AZ2: Refreshing state... [id=subnet-54448733]
aws_default_subnet.default_az1: Refreshing state... [id=subnet-a036c0e9]
aws_elb.web: Refreshing state... [id=webserver-HA-ELB]
aws_launch_configuration.web: Refreshing state... [id=Webserver-HA-LC-20210207093450928200000001]
aws_autoscaling_group.web: Refreshing state... [id=ASG-Webserver-HA-LC-20210207093450928200000001]
aws_autoscaling_group.web: Destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001, 10s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001, 20s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001, 30s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001, 40s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001, 50s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001, 1m0s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001, 1m10s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001, 1m20s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001, 1m30s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001, 1m40s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001, 1m50s elapsed]
aws_autoscaling_group.web: Still destroying... [id=ASG-Webserver-HA-LC-20210207093450928200000001, 2m0s elapsed]
aws_autoscaling_group.web: Destruction complete after 2m8s
aws_default_subnet.default_AZ2: Destroying... [id=subnet-54448733]
aws_default_subnet.default_az1: Destroying... [id=subnet-a036c0e9]
aws_elb.web: Destroying... [id=webserver-HA-ELB]
aws_launch_configuration.web: Destroying... [id=Webserver-HA-LC-20210207093450928200000001]
aws_default_subnet.default_AZ2: Destruction complete after 0s
aws_default_subnet.default_az1: Destruction complete after 0s
aws_launch_configuration.web: Destruction complete after 0s
aws_elb.web: Destruction complete after 2s
aws_security_group.web: Destroying... [id=sg-06dfe7c33ee9cef86]
aws_security_group.web: Still destroying... [id=sg-06dfe7c33ee9cef86, 10s elapsed]
aws_security_group.web: Destruction complete after 17s

Destroy complete! Resources: 6 destroyed.
bharathkumarraju@R77-NB193 Demo13_HA_with_TF

