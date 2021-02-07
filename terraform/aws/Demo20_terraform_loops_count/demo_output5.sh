bharathkumarraju@R77-NB193 Demo20_terraform_loops_count % terraform plan
aws_iam_user.user[3]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user[2]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user[1]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_iam_user.user[0]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_instance.bastion_server[0]: Refreshing state... [id=i-0947be21c67ed96f7]
aws_iam_user.user[4]: Refreshing state... [id=raju11@bharathkumaraju.com]
aws_instance.servers[3]: Refreshing state... [id=i-0648fff087da3f43f]
aws_instance.servers[1]: Refreshing state... [id=i-07ad1fbd197e29d26]
aws_instance.servers[0]: Refreshing state... [id=i-0f57768bb02789f93]
aws_instance.servers[2]: Refreshing state... [id=i-035ac6d6afb0f1129]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.bastion_server[0] will be destroyed
  - resource "aws_instance" "bastion_server" {
      - ami                          = "ami-00b8d9cb8a7161e41" -> null
      - arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-0947be21c67ed96f7" -> null
      - associate_public_ip_address  = true -> null
      - availability_zone            = "ap-southeast-1a" -> null
      - cpu_core_count               = 1 -> null
      - cpu_threads_per_core         = 2 -> null
      - disable_api_termination      = false -> null
      - ebs_optimized                = false -> null
      - get_password_data            = false -> null
      - hibernation                  = false -> null
      - id                           = "i-0947be21c67ed96f7" -> null
      - instance_state               = "running" -> null
      - instance_type                = "t3.micro" -> null
      - ipv6_address_count           = 0 -> null
      - ipv6_addresses               = [] -> null
      - monitoring                   = false -> null
      - primary_network_interface_id = "eni-014b617285b616926" -> null
      - private_dns                  = "ip-172-31-17-84.ap-southeast-1.compute.internal" -> null
      - private_ip                   = "172.31.17.84" -> null
      - public_dns                   = "ec2-54-255-171-137.ap-southeast-1.compute.amazonaws.com" -> null
      - public_ip                    = "54.255.171.137" -> null
      - secondary_private_ips        = [] -> null
      - security_groups              = [
          - "default",
        ] -> null
      - source_dest_check            = true -> null
      - subnet_id                    = "subnet-a036c0e9" -> null
      - tags                         = {
          - "Name"  = "Bastion Server"
          - "Owner" = "Bharath Raju"
        } -> null
      - tenancy                      = "default" -> null
      - vpc_security_group_ids       = [
          - "sg-bab514dc",
        ] -> null

      - credit_specification {
          - cpu_credits = "unlimited" -> null
        }

      - enclave_options {
          - enabled = false -> null
        }

      - metadata_options {
          - http_endpoint               = "enabled" -> null
          - http_put_response_hop_limit = 1 -> null
          - http_tokens                 = "optional" -> null
        }

      - root_block_device {
          - delete_on_termination = true -> null
          - device_name           = "/dev/xvda" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-0e5f8736d246e091b" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Changes to Outputs:
  - bastion_public_ip = "54.255.171.137" -> null

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo20_terraform_loops_count %


bharathkumarraju@R77-NB193 Demo20_terraform_loops_count % terraform apply -auto-approve
aws_iam_user.user[3]: Refreshing state... [id=raju12@bharathkumaraju.com]
aws_iam_user.user[0]: Refreshing state... [id=raju15@bharathkumaraju.com]
aws_iam_user.user[2]: Refreshing state... [id=raju13@bharathkumaraju.com]
aws_iam_user.user[4]: Refreshing state... [id=raju11@bharathkumaraju.com]
aws_iam_user.user[1]: Refreshing state... [id=raju14@bharathkumaraju.com]
aws_instance.servers[3]: Refreshing state... [id=i-0648fff087da3f43f]
aws_instance.servers[0]: Refreshing state... [id=i-0f57768bb02789f93]
aws_instance.servers[1]: Refreshing state... [id=i-07ad1fbd197e29d26]
aws_instance.bastion_server[0]: Refreshing state... [id=i-0947be21c67ed96f7]
aws_instance.servers[2]: Refreshing state... [id=i-035ac6d6afb0f1129]
aws_instance.bastion_server[0]: Destroying... [id=i-0947be21c67ed96f7]
aws_instance.bastion_server[0]: Still destroying... [id=i-0947be21c67ed96f7, 10s elapsed]
aws_instance.bastion_server[0]: Still destroying... [id=i-0947be21c67ed96f7, 20s elapsed]
aws_instance.bastion_server[0]: Still destroying... [id=i-0947be21c67ed96f7, 30s elapsed]
aws_instance.bastion_server[0]: Still destroying... [id=i-0947be21c67ed96f7, 40s elapsed]
aws_instance.bastion_server[0]: Still destroying... [id=i-0947be21c67ed96f7, 50s elapsed]
aws_instance.bastion_server[0]: Still destroying... [id=i-0947be21c67ed96f7, 1m0s elapsed]
aws_instance.bastion_server[0]: Still destroying... [id=i-0947be21c67ed96f7, 1m10s elapsed]
aws_instance.bastion_server[0]: Still destroying... [id=i-0947be21c67ed96f7, 1m20s elapsed]
aws_instance.bastion_server[0]: Destruction complete after 1m28s

Apply complete! Resources: 0 added, 0 changed, 1 destroyed.

Outputs:

iam_user_arn = [
  "arn:aws:iam::172586632398:user/raju15@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju14@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju13@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju12@bharathkumaraju.com",
  "arn:aws:iam::172586632398:user/raju11@bharathkumaraju.com",
]
instance_ids = [
  "i-0f57768bb02789f93",
  "i-07ad1fbd197e29d26",
  "i-035ac6d6afb0f1129",
  "i-0648fff087da3f43f",
]
instance_public_ips = [
  "13.212.245.247",
  "54.179.77.110",
  "13.212.213.96",
  "54.179.159.234",
]
bharathkumarraju@R77-NB193 Demo20_terraform_loops_count %