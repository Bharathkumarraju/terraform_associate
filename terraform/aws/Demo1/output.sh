bharathkumarraju@R77-NB193 terraform_associate % export AWS_ACCESS_KEY_ID="XXXXXXXXXXXXXXXXXX"
bharathkumarraju@R77-NB193 terraform_associate % export AWS_SECRET_ACCESS_KEY="XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
bharathkumarraju@R77-NB193 terraform_associate % export AWS_DEFAULT_REGION="ap-southeast-1"
bharathkumarraju@R77-NB193 terraform_associate % cd terraform/aws
bharathkumarraju@R77-NB193 aws % terraform init

Initializing the backend...

Initializing provider plugins...
- Checking for available provider plugins...
- Downloading plugin for provider "aws" (hashicorp/aws) 3.24.1...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 3.24"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumarraju@R77-NB193 aws % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.web will be created
  + resource "aws_instance" "web" {
      + ami                          = "ami-0c20b8b385217763f"
      + arn                          = (known after apply)
      + associate_public_ip_address  = (known after apply)
      + availability_zone            = (known after apply)
      + cpu_core_count               = (known after apply)
      + cpu_threads_per_core         = (known after apply)
      + get_password_data            = false
      + host_id                      = (known after apply)
      + id                           = (known after apply)
      + instance_state               = (known after apply)
      + instance_type                = "t3.micro"
      + ipv6_address_count           = (known after apply)
      + ipv6_addresses               = (known after apply)
      + key_name                     = (known after apply)
      + outpost_arn                  = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      + primary_network_interface_id = (known after apply)
      + private_dns                  = (known after apply)
      + private_ip                   = (known after apply)
      + public_dns                   = (known after apply)
      + public_ip                    = (known after apply)
      + secondary_private_ips        = (known after apply)
      + security_groups              = (known after apply)
      + source_dest_check            = true
      + subnet_id                    = (known after apply)
      + tags                         = {
          + "Name"  = "my-ubuntu-server"
          + "Owner" = "Bharath"
        }
      + tenancy                      = (known after apply)
      + vpc_security_group_ids       = (known after apply)

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

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 aws % terraform apply

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_instance.web will be created
  + resource "aws_instance" "web" {
      + ami                          = "ami-0c20b8b385217763f"
      + arn                          = (known after apply)
      + associate_public_ip_address  = (known after apply)
      + availability_zone            = (known after apply)
      + cpu_core_count               = (known after apply)
      + cpu_threads_per_core         = (known after apply)
      + get_password_data            = false
      + host_id                      = (known after apply)
      + id                           = (known after apply)
      + instance_state               = (known after apply)
      + instance_type                = "t3.micro"
      + ipv6_address_count           = (known after apply)
      + ipv6_addresses               = (known after apply)
      + key_name                     = (known after apply)
      + outpost_arn                  = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      + primary_network_interface_id = (known after apply)
      + private_dns                  = (known after apply)
      + private_ip                   = (known after apply)
      + public_dns                   = (known after apply)
      + public_ip                    = (known after apply)
      + secondary_private_ips        = (known after apply)
      + security_groups              = (known after apply)
      + source_dest_check            = true
      + subnet_id                    = (known after apply)
      + tags                         = {
          + "Name"  = "my-ubuntu-server"
          + "Owner" = "Bharath"
        }
      + tenancy                      = (known after apply)
      + vpc_security_group_ids       = (known after apply)

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

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.web: Creating...
aws_instance.web: Still creating... [10s elapsed]
aws_instance.web: Creation complete after 14s [id=i-0731b1a525cca9e8c]

Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 aws % terraform init

Initializing provider plugins...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 3.24"


Warning: Skipping backend initialization pending configuration upgrade

The root module configuration contains errors that may be fixed by running the
configuration upgrade tool, so Terraform is skipping backend initialization.
See below for more information.


Error: Duplicate resource "aws_instance" configuration

  on main.tf line 15:
  15: resource "aws_instance" "web" {

A aws_instance resource named "web" was already declared at main.tf:5,1-30.
Resource names must be unique per type in each module.


Terraform has initialized, but configuration upgrades may be needed.

Terraform found syntax errors in the configuration that prevented full
initialization. If you've recently upgraded to Terraform v0.12, this may be
because your configuration uses syntax constructs that are no longer valid,
and so must be updated before full initialization is possible.

Terraform has installed the required providers to support the configuration
upgrade process. To begin upgrading your configuration, run the following:
    terraform 0.12upgrade

To see the full set of errors that led to this message, run:
    terraform validate
bharathkumarraju@R77-NB193 aws % terraform init

Initializing the backend...

Initializing provider plugins...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 3.24"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumarraju@R77-NB193 aws % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

aws_instance.web: Refreshing state... [id=i-0731b1a525cca9e8c]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create
  - destroy

Terraform will perform the following actions:

  # aws_instance.my_amazon will be created
  + resource "aws_instance" "my_amazon" {
      + ami                          = "ami-00b8d9cb8a7161e41"
      + arn                          = (known after apply)
      + associate_public_ip_address  = (known after apply)
      + availability_zone            = (known after apply)
      + cpu_core_count               = (known after apply)
      + cpu_threads_per_core         = (known after apply)
      + get_password_data            = false
      + host_id                      = (known after apply)
      + id                           = (known after apply)
      + instance_state               = (known after apply)
      + instance_type                = "t3.micro"
      + ipv6_address_count           = (known after apply)
      + ipv6_addresses               = (known after apply)
      + key_name                     = (known after apply)
      + outpost_arn                  = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      + primary_network_interface_id = (known after apply)
      + private_dns                  = (known after apply)
      + private_ip                   = (known after apply)
      + public_dns                   = (known after apply)
      + public_ip                    = (known after apply)
      + secondary_private_ips        = (known after apply)
      + security_groups              = (known after apply)
      + source_dest_check            = true
      + subnet_id                    = (known after apply)
      + tags                         = {
          + "Name"  = "my-amazon-server"
          + "Owner" = "Bharath"
        }
      + tenancy                      = (known after apply)
      + vpc_security_group_ids       = (known after apply)

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

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_instance.my_ubuntu will be created
  + resource "aws_instance" "my_ubuntu" {
      + ami                          = "ami-0c20b8b385217763f"
      + arn                          = (known after apply)
      + associate_public_ip_address  = (known after apply)
      + availability_zone            = (known after apply)
      + cpu_core_count               = (known after apply)
      + cpu_threads_per_core         = (known after apply)
      + get_password_data            = false
      + host_id                      = (known after apply)
      + id                           = (known after apply)
      + instance_state               = (known after apply)
      + instance_type                = "t3.micro"
      + ipv6_address_count           = (known after apply)
      + ipv6_addresses               = (known after apply)
      + key_name                     = (known after apply)
      + outpost_arn                  = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      + primary_network_interface_id = (known after apply)
      + private_dns                  = (known after apply)
      + private_ip                   = (known after apply)
      + public_dns                   = (known after apply)
      + public_ip                    = (known after apply)
      + secondary_private_ips        = (known after apply)
      + security_groups              = (known after apply)
      + source_dest_check            = true
      + subnet_id                    = (known after apply)
      + tags                         = {
          + "Name"  = "my-ubuntu-server"
          + "Owner" = "Bharath"
        }
      + tenancy                      = (known after apply)
      + vpc_security_group_ids       = (known after apply)

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

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_instance.web will be destroyed
  - resource "aws_instance" "web" {
      - ami                          = "ami-0c20b8b385217763f" -> null
      - arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-0731b1a525cca9e8c" -> null
      - associate_public_ip_address  = true -> null
      - availability_zone            = "ap-southeast-1c" -> null
      - cpu_core_count               = 1 -> null
      - cpu_threads_per_core         = 2 -> null
      - disable_api_termination      = false -> null
      - ebs_optimized                = false -> null
      - get_password_data            = false -> null
      - hibernation                  = false -> null
      - id                           = "i-0731b1a525cca9e8c" -> null
      - instance_state               = "running" -> null
      - instance_type                = "t3.micro" -> null
      - ipv6_address_count           = 0 -> null
      - ipv6_addresses               = [] -> null
      - monitoring                   = false -> null
      - primary_network_interface_id = "eni-083c3226c8bb1d884" -> null
      - private_dns                  = "ip-172-31-33-234.ap-southeast-1.compute.internal" -> null
      - private_ip                   = "172.31.33.234" -> null
      - public_dns                   = "ec2-13-229-145-198.ap-southeast-1.compute.amazonaws.com" -> null
      - public_ip                    = "13.229.145.198" -> null
      - secondary_private_ips        = [] -> null
      - security_groups              = [
          - "default",
        ] -> null
      - source_dest_check            = true -> null
      - subnet_id                    = "subnet-074c7a41" -> null
      - tags                         = {
          - "Name"  = "my-ubuntu-server"
          - "Owner" = "Bharath"
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
          - device_name           = "/dev/sda1" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-0b8f09b4b1eff0642" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

Plan: 2 to add, 0 to change, 1 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 aws % terraform applu
Usage: terraform [-version] [-help] <command> [args]

The available commands for execution are listed below.
The most common, useful commands are shown first, followed by
less common or more advanced commands. If you're just getting
started with Terraform, stick with the common commands. For the
other commands, please read the help and docs before usage.

Common commands:
    apply              Builds or changes infrastructure
    console            Interactive console for Terraform interpolations
    destroy            Destroy Terraform-managed infrastructure
    env                Workspace management
    fmt                Rewrites config files to canonical format
    get                Download and install modules for the configuration
    graph              Create a visual graph of Terraform resources
    import             Import existing infrastructure into Terraform
    init               Initialize a Terraform working directory
    login              Obtain and save credentials for a remote host
    logout             Remove locally-stored credentials for a remote host
    output             Read an output from a state file
    plan               Generate and show an execution plan
    providers          Prints a tree of the providers used in the configuration
    refresh            Update local state file against real resources
    show               Inspect Terraform state or plan
    taint              Manually mark a resource for recreation
    untaint            Manually unmark a resource as tainted
    validate           Validates the Terraform files
    version            Prints the Terraform version
    workspace          Workspace management

All other commands:
    0.12upgrade        Rewrites pre-0.12 module source code for v0.12
    debug              Debug output management (experimental)
    force-unlock       Manually unlock the terraform state
    push               Obsolete command for Terraform Enterprise legacy (v1)
    state              Advanced state management
bharathkumarraju@R77-NB193 aws % terraform apply
aws_instance.web: Refreshing state... [id=i-0731b1a525cca9e8c]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create
  - destroy

Terraform will perform the following actions:

  # aws_instance.my_amazon will be created
  + resource "aws_instance" "my_amazon" {
      + ami                          = "ami-00b8d9cb8a7161e41"
      + arn                          = (known after apply)
      + associate_public_ip_address  = (known after apply)
      + availability_zone            = (known after apply)
      + cpu_core_count               = (known after apply)
      + cpu_threads_per_core         = (known after apply)
      + get_password_data            = false
      + host_id                      = (known after apply)
      + id                           = (known after apply)
      + instance_state               = (known after apply)
      + instance_type                = "t3.micro"
      + ipv6_address_count           = (known after apply)
      + ipv6_addresses               = (known after apply)
      + key_name                     = (known after apply)
      + outpost_arn                  = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      + primary_network_interface_id = (known after apply)
      + private_dns                  = (known after apply)
      + private_ip                   = (known after apply)
      + public_dns                   = (known after apply)
      + public_ip                    = (known after apply)
      + secondary_private_ips        = (known after apply)
      + security_groups              = (known after apply)
      + source_dest_check            = true
      + subnet_id                    = (known after apply)
      + tags                         = {
          + "Name"  = "my-amazon-server"
          + "Owner" = "Bharath"
        }
      + tenancy                      = (known after apply)
      + vpc_security_group_ids       = (known after apply)

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

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_instance.my_ubuntu will be created
  + resource "aws_instance" "my_ubuntu" {
      + ami                          = "ami-0c20b8b385217763f"
      + arn                          = (known after apply)
      + associate_public_ip_address  = (known after apply)
      + availability_zone            = (known after apply)
      + cpu_core_count               = (known after apply)
      + cpu_threads_per_core         = (known after apply)
      + get_password_data            = false
      + host_id                      = (known after apply)
      + id                           = (known after apply)
      + instance_state               = (known after apply)
      + instance_type                = "t3.micro"
      + ipv6_address_count           = (known after apply)
      + ipv6_addresses               = (known after apply)
      + key_name                     = (known after apply)
      + outpost_arn                  = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      + primary_network_interface_id = (known after apply)
      + private_dns                  = (known after apply)
      + private_ip                   = (known after apply)
      + public_dns                   = (known after apply)
      + public_ip                    = (known after apply)
      + secondary_private_ips        = (known after apply)
      + security_groups              = (known after apply)
      + source_dest_check            = true
      + subnet_id                    = (known after apply)
      + tags                         = {
          + "Name"  = "my-ubuntu-server"
          + "Owner" = "Bharath"
        }
      + tenancy                      = (known after apply)
      + vpc_security_group_ids       = (known after apply)

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

      + enclave_options {
          + enabled = (known after apply)
        }

      + ephemeral_block_device {
          + device_name  = (known after apply)
          + no_device    = (known after apply)
          + virtual_name = (known after apply)
        }

      + metadata_options {
          + http_endpoint               = (known after apply)
          + http_put_response_hop_limit = (known after apply)
          + http_tokens                 = (known after apply)
        }

      + network_interface {
          + delete_on_termination = (known after apply)
          + device_index          = (known after apply)
          + network_interface_id  = (known after apply)
        }

      + root_block_device {
          + delete_on_termination = (known after apply)
          + device_name           = (known after apply)
          + encrypted             = (known after apply)
          + iops                  = (known after apply)
          + kms_key_id            = (known after apply)
          + tags                  = (known after apply)
          + throughput            = (known after apply)
          + volume_id             = (known after apply)
          + volume_size           = (known after apply)
          + volume_type           = (known after apply)
        }
    }

  # aws_instance.web will be destroyed
  - resource "aws_instance" "web" {
      - ami                          = "ami-0c20b8b385217763f" -> null
      - arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-0731b1a525cca9e8c" -> null
      - associate_public_ip_address  = true -> null
      - availability_zone            = "ap-southeast-1c" -> null
      - cpu_core_count               = 1 -> null
      - cpu_threads_per_core         = 2 -> null
      - disable_api_termination      = false -> null
      - ebs_optimized                = false -> null
      - get_password_data            = false -> null
      - hibernation                  = false -> null
      - id                           = "i-0731b1a525cca9e8c" -> null
      - instance_state               = "running" -> null
      - instance_type                = "t3.micro" -> null
      - ipv6_address_count           = 0 -> null
      - ipv6_addresses               = [] -> null
      - monitoring                   = false -> null
      - primary_network_interface_id = "eni-083c3226c8bb1d884" -> null
      - private_dns                  = "ip-172-31-33-234.ap-southeast-1.compute.internal" -> null
      - private_ip                   = "172.31.33.234" -> null
      - public_dns                   = "ec2-13-229-145-198.ap-southeast-1.compute.amazonaws.com" -> null
      - public_ip                    = "13.229.145.198" -> null
      - secondary_private_ips        = [] -> null
      - security_groups              = [
          - "default",
        ] -> null
      - source_dest_check            = true -> null
      - subnet_id                    = "subnet-074c7a41" -> null
      - tags                         = {
          - "Name"  = "my-ubuntu-server"
          - "Owner" = "Bharath"
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
          - device_name           = "/dev/sda1" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-0b8f09b4b1eff0642" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

Plan: 2 to add, 0 to change, 1 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

aws_instance.web: Destroying... [id=i-0731b1a525cca9e8c]
aws_instance.my_ubuntu: Creating...
aws_instance.my_amazon: Creating...
aws_instance.my_ubuntu: Still creating... [10s elapsed]
aws_instance.web: Still destroying... [id=i-0731b1a525cca9e8c, 10s elapsed]
aws_instance.my_amazon: Still creating... [10s elapsed]
aws_instance.web: Destruction complete after 17s
aws_instance.my_ubuntu: Still creating... [20s elapsed]
aws_instance.my_amazon: Still creating... [20s elapsed]
aws_instance.my_amazon: Creation complete after 24s [id=i-05062c3b6985dd820]
aws_instance.my_ubuntu: Creation complete after 24s [id=i-0c9c2a9f42cbe4596]

Apply complete! Resources: 2 added, 0 changed, 1 destroyed.
bharathkumarraju@R77-NB193 aws % terraform apply
aws_instance.my_amazon: Refreshing state... [id=i-05062c3b6985dd820]
aws_instance.my_ubuntu: Refreshing state... [id=i-0c9c2a9f42cbe4596]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 aws % terraform init

Initializing the backend...

Initializing provider plugins...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 3.24"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumarraju@R77-NB193 aws % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

aws_instance.my_ubuntu: Refreshing state... [id=i-0c9c2a9f42cbe4596]
aws_instance.my_amazon: Refreshing state... [id=i-05062c3b6985dd820]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_instance.my_ubuntu will be updated in-place
  ~ resource "aws_instance" "my_ubuntu" {
        ami                          = "ami-0c20b8b385217763f"
        arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-0c9c2a9f42cbe4596"
        associate_public_ip_address  = true
        availability_zone            = "ap-southeast-1c"
        cpu_core_count               = 1
        cpu_threads_per_core         = 2
        disable_api_termination      = false
        ebs_optimized                = false
        get_password_data            = false
        hibernation                  = false
        id                           = "i-0c9c2a9f42cbe4596"
        instance_state               = "running"
        instance_type                = "t3.micro"
        ipv6_address_count           = 0
        ipv6_addresses               = []
        monitoring                   = false
        primary_network_interface_id = "eni-0b47fc5b3ec8f9505"
        private_dns                  = "ip-172-31-36-11.ap-southeast-1.compute.internal"
        private_ip                   = "172.31.36.11"
        public_dns                   = "ec2-13-212-160-36.ap-southeast-1.compute.amazonaws.com"
        public_ip                    = "13.212.160.36"
        secondary_private_ips        = []
        security_groups              = [
            "default",
        ]
        source_dest_check            = true
        subnet_id                    = "subnet-074c7a41"
      ~ tags                         = {
            "Name"    = "my-ubuntu-server"
            "Owner"   = "Bharath"
          + "project" = "Phoenix"
        }
        tenancy                      = "default"
        vpc_security_group_ids       = [
            "sg-bab514dc",
        ]

        credit_specification {
            cpu_credits = "unlimited"
        }

        enclave_options {
            enabled = false
        }

        metadata_options {
            http_endpoint               = "enabled"
            http_put_response_hop_limit = 1
            http_tokens                 = "optional"
        }

        root_block_device {
            delete_on_termination = true
            device_name           = "/dev/sda1"
            encrypted             = false
            iops                  = 100
            tags                  = {}
            throughput            = 0
            volume_id             = "vol-0ab0c4a6ed3864b81"
            volume_size           = 8
            volume_type           = "gp2"
        }
    }

Plan: 0 to add, 1 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 aws % terraform init

Initializing the backend...

Initializing provider plugins...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 3.24"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumarraju@R77-NB193 aws % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

aws_instance.my_amazon: Refreshing state... [id=i-05062c3b6985dd820]
aws_instance.my_ubuntu: Refreshing state... [id=i-0c9c2a9f42cbe4596]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_instance.my_amazon will be updated in-place
  ~ resource "aws_instance" "my_amazon" {
        ami                          = "ami-00b8d9cb8a7161e41"
        arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-05062c3b6985dd820"
        associate_public_ip_address  = true
        availability_zone            = "ap-southeast-1c"
        cpu_core_count               = 1
        cpu_threads_per_core         = 2
        disable_api_termination      = false
        ebs_optimized                = false
        get_password_data            = false
        hibernation                  = false
        id                           = "i-05062c3b6985dd820"
        instance_state               = "running"
        instance_type                = "t3.micro"
        ipv6_address_count           = 0
        ipv6_addresses               = []
        monitoring                   = false
        primary_network_interface_id = "eni-0527aff1c5e0c3055"
        private_dns                  = "ip-172-31-38-98.ap-southeast-1.compute.internal"
        private_ip                   = "172.31.38.98"
        public_dns                   = "ec2-13-212-136-152.ap-southeast-1.compute.amazonaws.com"
        public_ip                    = "13.212.136.152"
        secondary_private_ips        = []
        security_groups              = [
            "default",
        ]
        source_dest_check            = true
        subnet_id                    = "subnet-074c7a41"
      ~ tags                         = {
          ~ "Name"  = "my-amazon-server" -> "my-amazon-linux-server"
            "Owner" = "Bharath"
        }
        tenancy                      = "default"
        vpc_security_group_ids       = [
            "sg-bab514dc",
        ]

        credit_specification {
            cpu_credits = "unlimited"
        }

        enclave_options {
            enabled = false
        }

        metadata_options {
            http_endpoint               = "enabled"
            http_put_response_hop_limit = 1
            http_tokens                 = "optional"
        }

        root_block_device {
            delete_on_termination = true
            device_name           = "/dev/xvda"
            encrypted             = false
            iops                  = 100
            tags                  = {}
            throughput            = 0
            volume_id             = "vol-0d48d81896cd7ee41"
            volume_size           = 8
            volume_type           = "gp2"
        }
    }

  # aws_instance.my_ubuntu will be updated in-place
  ~ resource "aws_instance" "my_ubuntu" {
        ami                          = "ami-0c20b8b385217763f"
        arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-0c9c2a9f42cbe4596"
        associate_public_ip_address  = true
        availability_zone            = "ap-southeast-1c"
        cpu_core_count               = 1
        cpu_threads_per_core         = 2
        disable_api_termination      = false
        ebs_optimized                = false
        get_password_data            = false
        hibernation                  = false
        id                           = "i-0c9c2a9f42cbe4596"
        instance_state               = "running"
        instance_type                = "t3.micro"
        ipv6_address_count           = 0
        ipv6_addresses               = []
        monitoring                   = false
        primary_network_interface_id = "eni-0b47fc5b3ec8f9505"
        private_dns                  = "ip-172-31-36-11.ap-southeast-1.compute.internal"
        private_ip                   = "172.31.36.11"
        public_dns                   = "ec2-13-212-160-36.ap-southeast-1.compute.amazonaws.com"
        public_ip                    = "13.212.160.36"
        secondary_private_ips        = []
        security_groups              = [
            "default",
        ]
        source_dest_check            = true
        subnet_id                    = "subnet-074c7a41"
      ~ tags                         = {
            "Name"    = "my-ubuntu-server"
            "Owner"   = "Bharath"
          + "project" = "Phoenix"
        }
        tenancy                      = "default"
        vpc_security_group_ids       = [
            "sg-bab514dc",
        ]

        credit_specification {
            cpu_credits = "unlimited"
        }

        enclave_options {
            enabled = false
        }

        metadata_options {
            http_endpoint               = "enabled"
            http_put_response_hop_limit = 1
            http_tokens                 = "optional"
        }

        root_block_device {
            delete_on_termination = true
            device_name           = "/dev/sda1"
            encrypted             = false
            iops                  = 100
            tags                  = {}
            throughput            = 0
            volume_id             = "vol-0ab0c4a6ed3864b81"
            volume_size           = 8
            volume_type           = "gp2"
        }
    }

Plan: 0 to add, 2 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 aws % terraform apply -auto-approve
aws_instance.my_ubuntu: Refreshing state... [id=i-0c9c2a9f42cbe4596]
aws_instance.my_amazon: Refreshing state... [id=i-05062c3b6985dd820]
aws_instance.my_ubuntu: Modifying... [id=i-0c9c2a9f42cbe4596]
aws_instance.my_amazon: Modifying... [id=i-05062c3b6985dd820]
aws_instance.my_ubuntu: Modifications complete after 1s [id=i-0c9c2a9f42cbe4596]
aws_instance.my_amazon: Modifications complete after 1s [id=i-05062c3b6985dd820]

Apply complete! Resources: 0 added, 2 changed, 0 destroyed.
bharathkumarraju@R77-NB193 aws % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

aws_instance.my_amazon: Refreshing state... [id=i-05062c3b6985dd820]
aws_instance.my_ubuntu: Refreshing state... [id=i-0c9c2a9f42cbe4596]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
-/+ destroy and then create replacement

Terraform will perform the following actions:

  # aws_instance.my_amazon must be replaced
-/+ resource "aws_instance" "my_amazon" {
        ami                          = "ami-00b8d9cb8a7161e41"
      ~ arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-05062c3b6985dd820" -> (known after apply)
      ~ associate_public_ip_address  = true -> (known after apply)
      ~ availability_zone            = "ap-southeast-1c" -> (known after apply)
      ~ cpu_core_count               = 1 -> (known after apply)
      ~ cpu_threads_per_core         = 2 -> (known after apply)
      - disable_api_termination      = false -> null
      - ebs_optimized                = false -> null
        get_password_data            = false
      - hibernation                  = false -> null
      + host_id                      = (known after apply)
      ~ id                           = "i-05062c3b6985dd820" -> (known after apply)
      ~ instance_state               = "running" -> (known after apply)
        instance_type                = "t3.micro"
      ~ ipv6_address_count           = 0 -> (known after apply)
      ~ ipv6_addresses               = [] -> (known after apply)
      + key_name                     = "bharathtest" # forces replacement
      - monitoring                   = false -> null
      + outpost_arn                  = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      ~ primary_network_interface_id = "eni-0527aff1c5e0c3055" -> (known after apply)
      ~ private_dns                  = "ip-172-31-38-98.ap-southeast-1.compute.internal" -> (known after apply)
      ~ private_ip                   = "172.31.38.98" -> (known after apply)
      ~ public_dns                   = "ec2-13-212-136-152.ap-southeast-1.compute.amazonaws.com" -> (known after apply)
      ~ public_ip                    = "13.212.136.152" -> (known after apply)
      ~ secondary_private_ips        = [] -> (known after apply)
      ~ security_groups              = [
          - "default",
        ] -> (known after apply)
        source_dest_check            = true
      ~ subnet_id                    = "subnet-074c7a41" -> (known after apply)
        tags                         = {
            "Name"  = "my-amazon-linux-server"
            "Owner" = "Bharath"
        }
      ~ tenancy                      = "default" -> (known after apply)
      ~ vpc_security_group_ids       = [
          - "sg-bab514dc",
        ] -> (known after apply)

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
          ~ volume_id             = "vol-0d48d81896cd7ee41" -> (known after apply)
          ~ volume_size           = 8 -> (known after apply)
          ~ volume_type           = "gp2" -> (known after apply)
        }
    }

  # aws_instance.my_ubuntu must be replaced
-/+ resource "aws_instance" "my_ubuntu" {
        ami                          = "ami-0c20b8b385217763f"
      ~ arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-0c9c2a9f42cbe4596" -> (known after apply)
      ~ associate_public_ip_address  = true -> (known after apply)
      ~ availability_zone            = "ap-southeast-1c" -> (known after apply)
      ~ cpu_core_count               = 1 -> (known after apply)
      ~ cpu_threads_per_core         = 2 -> (known after apply)
      - disable_api_termination      = false -> null
      - ebs_optimized                = false -> null
        get_password_data            = false
      - hibernation                  = false -> null
      + host_id                      = (known after apply)
      ~ id                           = "i-0c9c2a9f42cbe4596" -> (known after apply)
      ~ instance_state               = "running" -> (known after apply)
        instance_type                = "t3.micro"
      ~ ipv6_address_count           = 0 -> (known after apply)
      ~ ipv6_addresses               = [] -> (known after apply)
      + key_name                     = "bharathtest" # forces replacement
      - monitoring                   = false -> null
      + outpost_arn                  = (known after apply)
      + password_data                = (known after apply)
      + placement_group              = (known after apply)
      ~ primary_network_interface_id = "eni-0b47fc5b3ec8f9505" -> (known after apply)
      ~ private_dns                  = "ip-172-31-36-11.ap-southeast-1.compute.internal" -> (known after apply)
      ~ private_ip                   = "172.31.36.11" -> (known after apply)
      ~ public_dns                   = "ec2-13-212-160-36.ap-southeast-1.compute.amazonaws.com" -> (known after apply)
      ~ public_ip                    = "13.212.160.36" -> (known after apply)
      ~ secondary_private_ips        = [] -> (known after apply)
      ~ security_groups              = [
          - "default",
        ] -> (known after apply)
        source_dest_check            = true
      ~ subnet_id                    = "subnet-074c7a41" -> (known after apply)
        tags                         = {
            "Name"    = "my-ubuntu-server"
            "Owner"   = "Bharath"
            "project" = "Phoenix"
        }
      ~ tenancy                      = "default" -> (known after apply)
      ~ vpc_security_group_ids       = [
          - "sg-bab514dc",
        ] -> (known after apply)

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
          ~ device_name           = "/dev/sda1" -> (known after apply)
          ~ encrypted             = false -> (known after apply)
          ~ iops                  = 100 -> (known after apply)
          + kms_key_id            = (known after apply)
          ~ tags                  = {} -> (known after apply)
          ~ throughput            = 0 -> (known after apply)
          ~ volume_id             = "vol-0ab0c4a6ed3864b81" -> (known after apply)
          ~ volume_size           = 8 -> (known after apply)
          ~ volume_type           = "gp2" -> (known after apply)
        }
    }

Plan: 2 to add, 0 to change, 2 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 aws % terraform apply -auto-approve
aws_instance.my_ubuntu: Refreshing state... [id=i-0c9c2a9f42cbe4596]
aws_instance.my_amazon: Refreshing state... [id=i-05062c3b6985dd820]
aws_instance.my_amazon: Destroying... [id=i-05062c3b6985dd820]
aws_instance.my_ubuntu: Destroying... [id=i-0c9c2a9f42cbe4596]
aws_instance.my_ubuntu: Still destroying... [id=i-0c9c2a9f42cbe4596, 10s elapsed]
aws_instance.my_amazon: Still destroying... [id=i-05062c3b6985dd820, 10s elapsed]
aws_instance.my_ubuntu: Still destroying... [id=i-0c9c2a9f42cbe4596, 20s elapsed]
aws_instance.my_amazon: Still destroying... [id=i-05062c3b6985dd820, 20s elapsed]
aws_instance.my_ubuntu: Destruction complete after 20s
aws_instance.my_ubuntu: Creating...
aws_instance.my_amazon: Still destroying... [id=i-05062c3b6985dd820, 30s elapsed]
aws_instance.my_ubuntu: Still creating... [10s elapsed]
aws_instance.my_ubuntu: Creation complete after 14s [id=i-0b7af86f555663fda]
aws_instance.my_amazon: Still destroying... [id=i-05062c3b6985dd820, 40s elapsed]
aws_instance.my_amazon: Still destroying... [id=i-05062c3b6985dd820, 50s elapsed]
aws_instance.my_amazon: Still destroying... [id=i-05062c3b6985dd820, 1m0s elapsed]
aws_instance.my_amazon: Destruction complete after 1m2s
aws_instance.my_amazon: Creating...
aws_instance.my_amazon: Still creating... [10s elapsed]
aws_instance.my_amazon: Creation complete after 14s [id=i-06c4f818e97e60be6]

Apply complete! Resources: 2 added, 0 changed, 2 destroyed.
bharathkumarraju@R77-NB193 aws % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

aws_instance.my_amazon: Refreshing state... [id=i-06c4f818e97e60be6]
aws_instance.my_ubuntu: Refreshing state... [id=i-0b7af86f555663fda]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  ~ update in-place

Terraform will perform the following actions:

  # aws_instance.my_ubuntu will be updated in-place
  ~ resource "aws_instance" "my_ubuntu" {
        ami                          = "ami-0c20b8b385217763f"
        arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-0b7af86f555663fda"
        associate_public_ip_address  = true
        availability_zone            = "ap-southeast-1c"
        cpu_core_count               = 1
        cpu_threads_per_core         = 2
        disable_api_termination      = false
        ebs_optimized                = false
        get_password_data            = false
        hibernation                  = false
        id                           = "i-0b7af86f555663fda"
        instance_state               = "running"
      ~ instance_type                = "t3.micro" -> "t2.small"
        ipv6_address_count           = 0
        ipv6_addresses               = []
        key_name                     = "bharathtest"
        monitoring                   = false
        primary_network_interface_id = "eni-0c35c930030b7fecf"
        private_dns                  = "ip-172-31-32-204.ap-southeast-1.compute.internal"
        private_ip                   = "172.31.32.204"
        public_dns                   = "ec2-18-141-163-196.ap-southeast-1.compute.amazonaws.com"
        public_ip                    = "18.141.163.196"
        secondary_private_ips        = []
        security_groups              = [
            "default",
        ]
        source_dest_check            = true
        subnet_id                    = "subnet-074c7a41"
        tags                         = {
            "Name"    = "my-ubuntu-server"
            "Owner"   = "Bharath"
            "project" = "Phoenix"
        }
        tenancy                      = "default"
        vpc_security_group_ids       = [
            "sg-bab514dc",
        ]

        credit_specification {
            cpu_credits = "unlimited"
        }

        enclave_options {
            enabled = false
        }

        metadata_options {
            http_endpoint               = "enabled"
            http_put_response_hop_limit = 1
            http_tokens                 = "optional"
        }

        root_block_device {
            delete_on_termination = true
            device_name           = "/dev/sda1"
            encrypted             = false
            iops                  = 100
            tags                  = {}
            throughput            = 0
            volume_id             = "vol-0dd165dc99340e0ae"
            volume_size           = 8
            volume_type           = "gp2"
        }
    }

Plan: 0 to add, 1 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 aws % terraform apply -auto-approve
aws_instance.my_amazon: Refreshing state... [id=i-06c4f818e97e60be6]
aws_instance.my_ubuntu: Refreshing state... [id=i-0b7af86f555663fda]
aws_instance.my_ubuntu: Modifying... [id=i-0b7af86f555663fda]
aws_instance.my_ubuntu: Still modifying... [id=i-0b7af86f555663fda, 10s elapsed]
aws_instance.my_ubuntu: Still modifying... [id=i-0b7af86f555663fda, 20s elapsed]
aws_instance.my_ubuntu: Still modifying... [id=i-0b7af86f555663fda, 30s elapsed]
aws_instance.my_ubuntu: Still modifying... [id=i-0b7af86f555663fda, 40s elapsed]
aws_instance.my_ubuntu: Still modifying... [id=i-0b7af86f555663fda, 50s elapsed]
aws_instance.my_ubuntu: Still modifying... [id=i-0b7af86f555663fda, 1m0s elapsed]
aws_instance.my_ubuntu: Still modifying... [id=i-0b7af86f555663fda, 1m10s elapsed]
aws_instance.my_ubuntu: Modifications complete after 1m14s [id=i-0b7af86f555663fda]

Apply complete! Resources: 0 added, 1 changed, 0 destroyed.
bharathkumarraju@R77-NB193 aws % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

aws_instance.my_ubuntu: Refreshing state... [id=i-0b7af86f555663fda]
aws_instance.my_amazon: Refreshing state... [id=i-06c4f818e97e60be6]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.my_amazon will be destroyed
  - resource "aws_instance" "my_amazon" {
      - ami                          = "ami-00b8d9cb8a7161e41" -> null
      - arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-06c4f818e97e60be6" -> null
      - associate_public_ip_address  = true -> null
      - availability_zone            = "ap-southeast-1c" -> null
      - cpu_core_count               = 1 -> null
      - cpu_threads_per_core         = 2 -> null
      - disable_api_termination      = false -> null
      - ebs_optimized                = false -> null
      - get_password_data            = false -> null
      - hibernation                  = false -> null
      - id                           = "i-06c4f818e97e60be6" -> null
      - instance_state               = "running" -> null
      - instance_type                = "t3.micro" -> null
      - ipv6_address_count           = 0 -> null
      - ipv6_addresses               = [] -> null
      - key_name                     = "bharathtest" -> null
      - monitoring                   = false -> null
      - primary_network_interface_id = "eni-0dc0b5c2c944122f3" -> null
      - private_dns                  = "ip-172-31-37-99.ap-southeast-1.compute.internal" -> null
      - private_ip                   = "172.31.37.99" -> null
      - public_dns                   = "ec2-3-1-72-12.ap-southeast-1.compute.amazonaws.com" -> null
      - public_ip                    = "3.1.72.12" -> null
      - secondary_private_ips        = [] -> null
      - security_groups              = [
          - "default",
        ] -> null
      - source_dest_check            = true -> null
      - subnet_id                    = "subnet-074c7a41" -> null
      - tags                         = {
          - "Name"  = "my-amazon-linux-server"
          - "Owner" = "Bharath"
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
          - volume_id             = "vol-0864a2057619f6988" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 aws % terraform apply -auto-approve
aws_instance.my_amazon: Refreshing state... [id=i-06c4f818e97e60be6]
aws_instance.my_ubuntu: Refreshing state... [id=i-0b7af86f555663fda]
aws_instance.my_amazon: Destroying... [id=i-06c4f818e97e60be6]
aws_instance.my_amazon: Still destroying... [id=i-06c4f818e97e60be6, 10s elapsed]
aws_instance.my_amazon: Still destroying... [id=i-06c4f818e97e60be6, 20s elapsed]
aws_instance.my_amazon: Still destroying... [id=i-06c4f818e97e60be6, 30s elapsed]
aws_instance.my_amazon: Destruction complete after 32s

Apply complete! Resources: 0 added, 0 changed, 1 destroyed.
bharathkumarraju@R77-NB193 aws %

bharathkumarraju@R77-NB193 Demo1 % terraform destroy
aws_instance.my_ubuntu: Refreshing state... [id=i-0b7af86f555663fda]

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_instance.my_ubuntu will be destroyed
  - resource "aws_instance" "my_ubuntu" {
      - ami                          = "ami-0c20b8b385217763f" -> null
      - arn                          = "arn:aws:ec2:ap-southeast-1:172586632398:instance/i-0b7af86f555663fda" -> null
      - associate_public_ip_address  = true -> null
      - availability_zone            = "ap-southeast-1c" -> null
      - cpu_core_count               = 1 -> null
      - cpu_threads_per_core         = 1 -> null
      - disable_api_termination      = false -> null
      - ebs_optimized                = false -> null
      - get_password_data            = false -> null
      - hibernation                  = false -> null
      - id                           = "i-0b7af86f555663fda" -> null
      - instance_state               = "running" -> null
      - instance_type                = "t2.small" -> null
      - ipv6_address_count           = 0 -> null
      - ipv6_addresses               = [] -> null
      - key_name                     = "bharathtest" -> null
      - monitoring                   = false -> null
      - primary_network_interface_id = "eni-0c35c930030b7fecf" -> null
      - private_dns                  = "ip-172-31-32-204.ap-southeast-1.compute.internal" -> null
      - private_ip                   = "172.31.32.204" -> null
      - public_dns                   = "ec2-13-212-237-205.ap-southeast-1.compute.amazonaws.com" -> null
      - public_ip                    = "13.212.237.205" -> null
      - secondary_private_ips        = [] -> null
      - security_groups              = [
          - "default",
        ] -> null
      - source_dest_check            = true -> null
      - subnet_id                    = "subnet-074c7a41" -> null
      - tags                         = {
          - "Name"    = "my-ubuntu-server"
          - "Owner"   = "Bharath"
          - "project" = "Phoenix"
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
          - device_name           = "/dev/sda1" -> null
          - encrypted             = false -> null
          - iops                  = 100 -> null
          - tags                  = {} -> null
          - throughput            = 0 -> null
          - volume_id             = "vol-0dd165dc99340e0ae" -> null
          - volume_size           = 8 -> null
          - volume_type           = "gp2" -> null
        }
    }

Plan: 0 to add, 0 to change, 1 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_instance.my_ubuntu: Destroying... [id=i-0b7af86f555663fda]
aws_instance.my_ubuntu: Still destroying... [id=i-0b7af86f555663fda, 10s elapsed]
aws_instance.my_ubuntu: Still destroying... [id=i-0b7af86f555663fda, 20s elapsed]
aws_instance.my_ubuntu: Destruction complete after 30s

Destroy complete! Resources: 1 destroyed.
bharathkumarraju@R77-NB193 Demo1 %