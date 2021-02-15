bharathkumarraju@R77-NB193 Demo27_recreate_TF_resources % terraform taint aws_instance.node2
Resource instance aws_instance.node2 has been marked as tainted.
bharathkumarraju@R77-NB193 Demo27_recreate_TF_resources %

bharathkumarraju@R77-NB193 Demo27_recreate_TF_resources % terraform plan
aws_instance.node1: Refreshing state... [id=i-03cdb06f3e7a56864]
aws_instance.node2: Refreshing state... [id=i-0bc2483f588e6c3f3]
aws_instance.node3: Refreshing state... [id=i-06a0cd7ac3f5cd268]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # aws_instance.node2 is tainted, so must be replaced
-/+ resource "aws_instance" "node2" {
      ~ arn                          = "arn:aws:ec2:us-west-1:172586632398:instance/i-0bc2483f588e6c3f3" -> (known after apply)
      ~ associate_public_ip_address  = true -> (known after apply)
      ~ availability_zone            = "us-west-1a" -> (known after apply)
      ~ cpu_core_count               = 1 -> (known after apply)
      ~ cpu_threads_per_core         = 2 -> (known after apply)
      - disable_api_termination      = false -> null
      - ebs_optimized                = false -> null
      - hibernation                  = false -> null
      + host_id                      = (known after apply)
      ~ id                           = "i-0bc2483f588e6c3f3" -> (known after apply)
      ~ instance_state               = "running" -> (known after apply)
      ~ ipv6_address_count           = 0 -> (known after apply)
      ~ ipv6_addresses               = [] -> (known after apply)
      + key_name                     = (known after apply)
      - monitoring                   = false -> null
      + outpost_arn                  = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      ~ primary_network_interface_id = "eni-0a59b6b6d2c1a14cc" -> (known after apply)
      ~ private_dns                  = "ip-172-31-4-27.us-west-1.compute.internal" -> (known after apply)
      ~ private_ip                   = "172.31.4.27" -> (known after apply)
      ~ public_dns                   = "ec2-54-153-37-148.us-west-1.compute.amazonaws.com" -> (known after apply)
      ~ public_ip                    = "54.153.37.148" -> (known after apply)
      ~ secondary_private_ips        = [] -> (known after apply)
      ~ security_groups              = [
          - "default",
        ] -> (known after apply)
      ~ subnet_id                    = "subnet-18494840" -> (known after apply)
        tags                         = {
            "Name"  = "Node-2"
            "Owner" = "BD"
        }
      ~ tenancy                      = "default" -> (known after apply)
      ~ vpc_security_group_ids       = [
          - "sg-00b43066",
        ] -> (known after apply)
        # (4 unchanged attributes hidden)

      - credit_specification {
          - cpu_credits = "unlimited" -> null
        }

      + ebs_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + snapshot_id           = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }

      ~ enclave_options {
          ~ enabled = false -> (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      ~ metadata_options {
          ~ http_endpoint               = "enabled" -> (known after apply)
          ~ http_put_response_hop_limit = 1 -> (known after apply)
          ~ http_tokens                 = "optional" -> (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      ~ root_block_device {
          ~ delete_on_termination = true -> (known after apply)
          ~ device_name           = "/dev/xvda" -> (known after apply)
          ~ encrypted             = false -> (known after apply)
          ~ iops                  = 100 -> (known after apply)
          + kms_key_id            = (known after apply)
          ~ tags                  = {} -> (known after apply)
          ~ throughput            = 0 -> (known after apply)
          ~ volume_id             = "vol-0ab85aed7bf862cca" -> (known after apply)
          ~ volume_size           = 8 -> (known after apply)
          ~ volume_type           = "gp2" -> (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 1 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo27_recreate_TF_resources %


bharathkumarraju@R77-NB193 Demo27_recreate_TF_resources % terraform apply -auto-approve
aws_instance.node2: Refreshing state... [id=i-0bc2483f588e6c3f3]
aws_instance.node1: Refreshing state... [id=i-03cdb06f3e7a56864]
aws_instance.node3: Refreshing state... [id=i-06a0cd7ac3f5cd268]
aws_instance.node2: Destroying... [id=i-0bc2483f588e6c3f3]
aws_instance.node2: Still destroying... [id=i-0bc2483f588e6c3f3, 10s elapsed]
aws_instance.node2: Destruction complete after 16s
aws_instance.node2: Creating...
aws_instance.node2: Still creating... [10s elapsed]
aws_instance.node2: Creation complete after 19s [id=i-0ddafe07796dde758]

Apply complete! Resources: 1 added, 0 changed, 1 destroyed.
bharathkumarraju@R77-NB193 Demo27_recreate_TF_resources %



bharathkumarraju@R77-NB193 Demo27_recreate_TF_resources % terraform destroy -auto-approve
aws_instance.node1: Destroying... [id=i-03cdb06f3e7a56864]
aws_instance.node3: Destroying... [id=i-06a0cd7ac3f5cd268]
aws_instance.node3: Still destroying... [id=i-06a0cd7ac3f5cd268, 10s elapsed]
aws_instance.node1: Still destroying... [id=i-03cdb06f3e7a56864, 10s elapsed]
aws_instance.node1: Still destroying... [id=i-03cdb06f3e7a56864, 20s elapsed]
aws_instance.node3: Still destroying... [id=i-06a0cd7ac3f5cd268, 20s elapsed]
aws_instance.node1: Destruction complete after 25s
aws_instance.node3: Still destroying... [id=i-06a0cd7ac3f5cd268, 30s elapsed]
aws_instance.node3: Still destroying... [id=i-06a0cd7ac3f5cd268, 40s elapsed]
aws_instance.node3: Still destroying... [id=i-06a0cd7ac3f5cd268, 50s elapsed]
aws_instance.node3: Still destroying... [id=i-06a0cd7ac3f5cd268, 1m0s elapsed]
aws_instance.node3: Destruction complete after 1m10s
aws_instance.node2: Destroying... [id=i-0ddafe07796dde758]
aws_instance.node2: Still destroying... [id=i-0ddafe07796dde758, 10s elapsed]
aws_instance.node2: Destruction complete after 16s

Destroy complete! Resources: 3 destroyed.
bharathkumarraju@R77-NB193 Demo27_recreate_TF_resources %





