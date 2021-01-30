
bharathkumarraju@R77-NB193 Demo10_aws_secrets_manager % terraform init

Initializing the backend...

Initializing provider plugins...

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
bharathkumarraju@R77-NB193 Demo10_aws_secrets_manager %



bharathkumarraju@R77-NB193 Demo10_aws_secrets_manager % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create
 <= read (data resources)

Terraform will perform the following actions:

  # data.aws_secretsmanager_secret_version.rds_all will be read during apply
  # (config refers to values not yet known)
 <= data "aws_secretsmanager_secret_version" "rds_all"  {
      + arn            = (known after apply)
      + id             = (known after apply)
      + secret_binary  = (sensitive value)
      + secret_id      = (known after apply)
      + secret_string  = (sensitive value)
      + version_id     = (known after apply)
      + version_stages = (known after apply)
    }

  # data.aws_secretsmanager_secret_version.rds_password will be read during apply
  # (config refers to values not yet known)
 <= data "aws_secretsmanager_secret_version" "rds_password"  {
      + arn            = (known after apply)
      + id             = (known after apply)
      + secret_binary  = (sensitive value)
      + secret_id      = (known after apply)
      + secret_string  = (sensitive value)
      + version_id     = (known after apply)
      + version_stages = (known after apply)
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

  # aws_secretsmanager_secret.rds_all will be created
  + resource "aws_secretsmanager_secret" "rds_all" {
      + arn                     = (known after apply)
      + description             = "All details for my RDS DataBase"
      + id                      = (known after apply)
      + name                    = "/prod/rds/all"
      + name_prefix             = (known after apply)
      + policy                  = (known after apply)
      + recovery_window_in_days = 0
      + rotation_enabled        = (known after apply)
      + rotation_lambda_arn     = (known after apply)

      + rotation_rules {
          + automatically_after_days = (known after apply)
        }
    }

  # aws_secretsmanager_secret.rds_password will be created
  + resource "aws_secretsmanager_secret" "rds_password" {
      + arn                     = (known after apply)
      + description             = "master password for rds"
      + id                      = (known after apply)
      + name                    = "/prod/rds/password"
      + name_prefix             = (known after apply)
      + policy                  = (known after apply)
      + recovery_window_in_days = 0
      + rotation_enabled        = (known after apply)
      + rotation_lambda_arn     = (known after apply)

      + rotation_rules {
          + automatically_after_days = (known after apply)
        }
    }

  # aws_secretsmanager_secret_version.rds_all will be created
  + resource "aws_secretsmanager_secret_version" "rds_all" {
      + arn            = (known after apply)
      + id             = (known after apply)
      + secret_id      = (known after apply)
      + secret_string  = (sensitive value)
      + version_id     = (known after apply)
      + version_stages = (known after apply)
    }

  # aws_secretsmanager_secret_version.rds_password will be created
  + resource "aws_secretsmanager_secret_version" "rds_password" {
      + arn            = (known after apply)
      + id             = (known after apply)
      + secret_id      = (known after apply)
      + secret_string  = (sensitive value)
      + version_id     = (known after apply)
      + version_stages = (known after apply)
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

Plan: 6 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo10_aws_secrets_manager %


bharathkumarraju@R77-NB193 Demo10_aws_secrets_manager % terraform apply -auto-approve
random_password.main: Creating...
random_password.main: Creation complete after 0s [id=none]
aws_secretsmanager_secret.rds_password: Creating...
aws_secretsmanager_secret.rds_all: Creating...
aws_secretsmanager_secret.rds_all: Creation complete after 1s [id=arn:aws:secretsmanager:ap-southeast-1:172586632398:secret:/prod/rds/all-bX062W]
aws_secretsmanager_secret.rds_password: Creation complete after 1s [id=arn:aws:secretsmanager:ap-southeast-1:172586632398:secret:/prod/rds/password-nXXmBV]
aws_secretsmanager_secret_version.rds_password: Creating...
aws_secretsmanager_secret_version.rds_password: Creation complete after 0s [id=arn:aws:secretsmanager:ap-southeast-1:172586632398:secret:/prod/rds/password-nXXmBV|84F60B13-FCDE-45FF-A448-F34D1C96634D]
data.aws_secretsmanager_secret_version.rds_password: Refreshing state...

Error: Secrets Manager Secret "arn:aws:secretsmanager:ap-southeast-1:172586632398:secret:/prod/rds/password-nXXmBV" Version "AWSCURRENT" not found


bharathkumarraju@R77-NB193 Demo10_aws_secrets_manager % terraform apply -auto-approve
random_password.main: Refreshing state... [id=none]
aws_secretsmanager_secret.rds_all: Refreshing state... [id=arn:aws:secretsmanager:ap-southeast-1:172586632398:secret:/prod/rds/all-bX062W]
aws_secretsmanager_secret.rds_password: Refreshing state... [id=arn:aws:secretsmanager:ap-southeast-1:172586632398:secret:/prod/rds/password-nXXmBV]
aws_secretsmanager_secret_version.rds_password: Refreshing state... [id=arn:aws:secretsmanager:ap-southeast-1:172586632398:secret:/prod/rds/password-nXXmBV|84F60B13-FCDE-45FF-A448-F34D1C96634D]
data.aws_secretsmanager_secret_version.rds_password: Refreshing state...
aws_db_instance.prod: Creating...
aws_db_instance.prod: Still creating... [10s elapsed]
aws_db_instance.prod: Still creating... [20s elapsed]
aws_db_instance.prod: Still creating... [1m40s elapsed]
aws_db_instance.prod: Still creating... [1m50s elapsed]
aws_db_instance.prod: Still creating... [2m0s elapsed]
aws_db_instance.prod: Still creating... [2m10s elapsed]
aws_db_instance.prod: Still creating... [2m20s elapsed]
aws_db_instance.prod: Still creating... [2m30s elapsed]
aws_db_instance.prod: Still creating... [2m40s elapsed]
aws_db_instance.prod: Creation complete after 2m50s [id=prod-mysql-rds]
aws_secretsmanager_secret_version.rds_all: Creating...
aws_secretsmanager_secret_version.rds_all: Creation complete after 1s [id=arn:aws:secretsmanager:ap-southeast-1:172586632398:secret:/prod/rds/all-bX062W|63FCB0CC-B0A1-48F2-8607-10D2E50799BF]
data.aws_secretsmanager_secret_version.rds_all: Refreshing state...

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

bkjson_rds_address = prod-mysql-rds.c38qarzmsqes.ap-southeast-1.rds.amazonaws.com
bkjson_rds_password = gwtyND_BzkOkC8tZ!opT
bkjson_rds_port = 3306
bkjson_rds_username = administrator
rds_Address = prod-mysql-rds.c38qarzmsqes.ap-southeast-1.rds.amazonaws.com
rds_all = {
  "rds_address" = "prod-mysql-rds.c38qarzmsqes.ap-southeast-1.rds.amazonaws.com"
  "rds_password" = "gwtyND_BzkOkC8tZ!opT"
  "rds_port" = 3306
  "rds_username" = "administrator"
}
rds_password = gwtyND_BzkOkC8tZ!opT
rds_port = 3306
rds_username = administrator
bharathkumarraju@R77-NB193 Demo10_aws_secrets_manager %




