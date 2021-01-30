bharathkumarraju@R77-NB193 Demo9_aws_secrets % terraform init

Initializing the backend...

Initializing provider plugins...
- Checking for available provider plugins...
- Downloading plugin for provider "aws" (hashicorp/aws) 3.24.1...
- Downloading plugin for provider "random" (hashicorp/random) 3.0.1...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.aws: version = "~> 3.24"
* provider.random: version = "~> 3.0"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumarraju@R77-NB193 Demo9_aws_secrets %



bharathkumarraju@R77-NB193 Demo9_aws_secrets % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create
 <= read (data resources)

Terraform will perform the following actions:

  # data.aws_ssm_parameter.rds_password will be read during apply
  # (config refers to values not yet known)
 <= data "aws_ssm_parameter" "rds_password"  {
      + arn     = (known after apply)
      + id      = (known after apply)
      + name    = "/prod/prod-mysql-rds/password"
      + type    = (known after apply)
      + value   = (sensitive value)
      + version = (known after apply)
    }

  # aws_db_instance.prod will be created
  + resource "aws_db_instance" "prod" {
      + address                               = (known after apply)
      + allocated_storage                     = 20
      + apply_immediately                     = true
      + arn                                   = (known after apply)
      + auto_minor_version_upgrade            = true
      + availability_zone                     = (known after apply)
      + backup_retention_period               = (known after apply)
      + backup_window                         = (known after apply)
      + ca_cert_identifier                    = (known after apply)
      + character_set_name                    = (known after apply)
      + copy_tags_to_snapshot                 = false
      + db_subnet_group_name                  = (known after apply)
      + delete_automated_backups              = true
      + endpoint                              = (known after apply)
      + engine                                = "mysql"
      + engine_version                        = "5.7"
      + hosted_zone_id                        = (known after apply)
      + id                                    = (known after apply)
      + identifier                            = "prod-mysql-rds"
      + identifier_prefix                     = (known after apply)
      + instance_class                        = "db.t3.micro"
      + kms_key_id                            = (known after apply)
      + latest_restorable_time                = (known after apply)
      + license_model                         = (known after apply)
      + maintenance_window                    = (known after apply)
      + monitoring_interval                   = 0
      + monitoring_role_arn                   = (known after apply)
      + multi_az                              = (known after apply)
      + name                                  = (known after apply)
      + option_group_name                     = (known after apply)
      + parameter_group_name                  = "default.mysql5.7"
      + password                              = (sensitive value)
      + performance_insights_enabled          = false
      + performance_insights_kms_key_id       = (known after apply)
      + performance_insights_retention_period = (known after apply)
      + port                                  = (known after apply)
      + publicly_accessible                   = false
      + replicas                              = (known after apply)
      + resource_id                           = (known after apply)
      + skip_final_snapshot                   = true
      + status                                = (known after apply)
      + storage_type                          = "gp2"
      + timezone                              = (known after apply)
      + username                              = "administrator"
      + vpc_security_group_ids                = (known after apply)
    }

  # aws_ssm_parameter.rds_password will be created
  + resource "aws_ssm_parameter" "rds_password" {
      + arn         = (known after apply)
      + data_type   = (known after apply)
      + description = "master password for rds"
      + id          = (known after apply)
      + key_id      = (known after apply)
      + name        = "/prod/prod-mysql-rds/password"
      + tier        = "Standard"
      + type        = "SecureString"
      + value       = (sensitive value)
      + version     = (known after apply)
    }

  # random_password.main will be created
  + resource "random_password" "main" {
      + id               = (known after apply)
      + length           = 20
      + lower            = true
      + min_lower        = 0
      + min_numeric      = 0
      + min_special      = 0
      + min_upper        = 0
      + number           = true
      + override_special = "#!()_"
      + result           = (sensitive value)
      + special          = true
      + upper            = true
    }

Plan: 3 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo9_aws_secrets %


bharathkumarraju@R77-NB193 Demo9_aws_secrets % terraform apply -auto-approve
random_password.main: Creating...
random_password.main: Creation complete after 0s [id=none]
aws_ssm_parameter.rds_password: Creating...
aws_ssm_parameter.rds_password: Creation complete after 1s [id=/prod/prod-mysql-rds/password]
data.aws_ssm_parameter.rds_password: Refreshing state...
aws_db_instance.prod: Creating...
aws_db_instance.prod: Still creating... [10s elapsed]
aws_db_instance.prod: Still creating... [20s elapsed]
aws_db_instance.prod: Still creating... [30s elapsed]
aws_db_instance.prod: Still creating... [40s elapsed]
aws_db_instance.prod: Still creating... [50s elapsed]
aws_db_instance.prod: Still creating... [1m0s elapsed]
aws_db_instance.prod: Still creating... [1m10s elapsed]
aws_db_instance.prod: Still creating... [1m20s elapsed]
aws_db_instance.prod: Still creating... [1m30s elapsed]
aws_db_instance.prod: Still creating... [1m40s elapsed]
aws_db_instance.prod: Still creating... [1m50s elapsed]
aws_db_instance.prod: Still creating... [2m0s elapsed]
aws_db_instance.prod: Still creating... [2m10s elapsed]
aws_db_instance.prod: Still creating... [2m20s elapsed]
aws_db_instance.prod: Still creating... [2m30s elapsed]
aws_db_instance.prod: Still creating... [2m40s elapsed]
aws_db_instance.prod: Still creating... [2m50s elapsed]
aws_db_instance.prod: Still creating... [3m0s elapsed]
aws_db_instance.prod: Creation complete after 3m6s [id=prod-mysql-rds]

Apply complete! Resources: 3 added, 0 changed, 0 destroyed.

Outputs:

rds_Address = prod-mysql-rds.c38qarzmsqes.ap-southeast-1.rds.amazonaws.com
rds_password = <sensitive>
rds_port = 3306
rds_username = administrator
bharathkumarraju@R77-NB193 Demo9_aws_secrets %



