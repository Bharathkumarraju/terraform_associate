bharathkumarraju@R77-NB193 Demo9_aws_secrets % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

random_password.main: Refreshing state... [id=none]
aws_ssm_parameter.rds_password: Refreshing state... [id=/prod/prod-mysql-rds/password]
aws_db_instance.prod: Refreshing state... [id=prod-mysql-rds]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  ~ update in-place
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

  # aws_db_instance.prod will be updated in-place
  ~ resource "aws_db_instance" "prod" {
        address                               = "prod-mysql-rds.c38qarzmsqes.ap-southeast-1.rds.amazonaws.com"
        allocated_storage                     = 20
        apply_immediately                     = true
        arn                                   = "arn:aws:rds:ap-southeast-1:172586632398:db:prod-mysql-rds"
        auto_minor_version_upgrade            = true
        availability_zone                     = "ap-southeast-1a"
        backup_retention_period               = 0
        backup_window                         = "15:53-16:23"
        ca_cert_identifier                    = "rds-ca-2019"
        copy_tags_to_snapshot                 = false
        db_subnet_group_name                  = "default"
        delete_automated_backups              = true
        deletion_protection                   = false
        enabled_cloudwatch_logs_exports       = []
        endpoint                              = "prod-mysql-rds.c38qarzmsqes.ap-southeast-1.rds.amazonaws.com:3306"
        engine                                = "mysql"
        engine_version                        = "5.7.26"
        hosted_zone_id                        = "Z2G0U3KFCY8NZ5"
        iam_database_authentication_enabled   = false
        id                                    = "prod-mysql-rds"
        identifier                            = "prod-mysql-rds"
        instance_class                        = "db.t3.micro"
        iops                                  = 0
        latest_restorable_time                = "0001-01-01T00:00:00Z"
        license_model                         = "general-public-license"
        maintenance_window                    = "thu:19:30-thu:20:00"
        max_allocated_storage                 = 0
        monitoring_interval                   = 0
        multi_az                              = false
        option_group_name                     = "default:mysql-5-7"
        parameter_group_name                  = "default.mysql5.7"
      ~ password                              = (sensitive value)
        performance_insights_enabled          = false
        performance_insights_retention_period = 0
        port                                  = 3306
        publicly_accessible                   = false
        replicas                              = []
        resource_id                           = "db-OWNCMU4WHNHXH4Q4BCM5LILR5M"
        security_group_names                  = []
        skip_final_snapshot                   = true
        status                                = "available"
        storage_encrypted                     = false
        storage_type                          = "gp2"
        tags                                  = {}
        username                              = "administrator"
        vpc_security_group_ids                = [
            "sg-bab514dc",
        ]
    }

Plan: 0 to add, 1 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo9_aws_secrets % terraform spply -auto-approve
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
bharathkumarraju@R77-NB193 Demo9_aws_secrets % terraform apply -auto-approve
random_password.main: Refreshing state... [id=none]
aws_ssm_parameter.rds_password: Refreshing state... [id=/prod/prod-mysql-rds/password]
aws_db_instance.prod: Refreshing state... [id=prod-mysql-rds]
data.aws_ssm_parameter.rds_password: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

rds_Address = prod-mysql-rds.c38qarzmsqes.ap-southeast-1.rds.amazonaws.com
rds_password = HyU(mdfE0)X7c12345
rds_port = 3306
rds_username = administrator
bharathkumarraju@R77-NB193 Demo9_aws_secrets % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

random_password.main: Refreshing state... [id=none]
aws_ssm_parameter.rds_password: Refreshing state... [id=/prod/prod-mysql-rds/password]
aws_db_instance.prod: Refreshing state... [id=prod-mysql-rds]

------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  ~ update in-place
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

  # aws_db_instance.prod will be updated in-place
  ~ resource "aws_db_instance" "prod" {
        address                               = "prod-mysql-rds.c38qarzmsqes.ap-southeast-1.rds.amazonaws.com"
        allocated_storage                     = 20
        apply_immediately                     = true
        arn                                   = "arn:aws:rds:ap-southeast-1:172586632398:db:prod-mysql-rds"
        auto_minor_version_upgrade            = true
        availability_zone                     = "ap-southeast-1a"
        backup_retention_period               = 0
        backup_window                         = "15:53-16:23"
        ca_cert_identifier                    = "rds-ca-2019"
        copy_tags_to_snapshot                 = false
        db_subnet_group_name                  = "default"
        delete_automated_backups              = true
        deletion_protection                   = false
        enabled_cloudwatch_logs_exports       = []
        endpoint                              = "prod-mysql-rds.c38qarzmsqes.ap-southeast-1.rds.amazonaws.com:3306"
        engine                                = "mysql"
        engine_version                        = "5.7.26"
        hosted_zone_id                        = "Z2G0U3KFCY8NZ5"
        iam_database_authentication_enabled   = false
        id                                    = "prod-mysql-rds"
        identifier                            = "prod-mysql-rds"
        instance_class                        = "db.t3.micro"
        iops                                  = 0
        latest_restorable_time                = "0001-01-01T00:00:00Z"
        license_model                         = "general-public-license"
        maintenance_window                    = "thu:19:30-thu:20:00"
        max_allocated_storage                 = 0
        monitoring_interval                   = 0
        multi_az                              = false
        option_group_name                     = "default:mysql-5-7"
        parameter_group_name                  = "default.mysql5.7"
      ~ password                              = (sensitive value)
        performance_insights_enabled          = false
        performance_insights_retention_period = 0
        port                                  = 3306
        publicly_accessible                   = false
        replicas                              = []
        resource_id                           = "db-OWNCMU4WHNHXH4Q4BCM5LILR5M"
        security_group_names                  = []
        skip_final_snapshot                   = true
        status                                = "available"
        storage_encrypted                     = false
        storage_type                          = "gp2"
        tags                                  = {}
        username                              = "administrator"
        vpc_security_group_ids                = [
            "sg-bab514dc",
        ]
    }

Plan: 0 to add, 1 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo9_aws_secrets % terraform apply -auto-approve
random_password.main: Refreshing state... [id=none]
aws_ssm_parameter.rds_password: Refreshing state... [id=/prod/prod-mysql-rds/password]
aws_db_instance.prod: Refreshing state... [id=prod-mysql-rds]
data.aws_ssm_parameter.rds_password: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

rds_Address = prod-mysql-rds.c38qarzmsqes.ap-southeast-1.rds.amazonaws.com
rds_password = HyU(mdfE0)X7c12345
rds_port = 3306
rds_username = administrator
bharathkumarraju@R77-NB193 Demo9_aws_secrets %


bharathkumarraju@R77-NB193 Demo9_aws_secrets % terraform destroy -auto-approve
random_password.main: Refreshing state... [id=none]
aws_ssm_parameter.rds_password: Refreshing state... [id=/prod/prod-mysql-rds/password]
aws_db_instance.prod: Refreshing state... [id=prod-mysql-rds]
aws_db_instance.prod: Destroying... [id=prod-mysql-rds]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 10s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 20s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 30s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 40s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 50s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 1m0s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 1m10s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 1m20s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 1m30s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 1m40s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 1m50s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 2m0s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 2m10s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 2m20s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 2m30s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 2m40s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 2m50s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 3m0s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 3m10s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 3m20s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 3m30s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 3m40s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 3m50s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 4m0s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 4m10s elapsed]
aws_db_instance.prod: Still destroying... [id=prod-mysql-rds, 4m20s elapsed]
aws_db_instance.prod: Destruction complete after 4m25s
aws_ssm_parameter.rds_password: Destroying... [id=/prod/prod-mysql-rds/password]
aws_ssm_parameter.rds_password: Destruction complete after 0s
random_password.main: Destroying... [id=none]
random_password.main: Destruction complete after 0s

Destroy complete! Resources: 3 destroyed.
bharathkumarraju@R77-NB193 Demo9_aws_secrets %

