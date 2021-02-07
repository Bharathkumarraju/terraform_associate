bharathkumarraju@R77-NB193 Demo11_Data_sources % terraform init

Initializing the backend...

Initializing provider plugins...

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
bharathkumarraju@R77-NB193 Demo11_Data_sources % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.

data.aws_region.current: Refreshing state...

------------------------------------------------------------------------

No changes. Infrastructure is up-to-date.

This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
bharathkumarraju@R77-NB193 Demo11_Data_sources %


bharathkumarraju@R77-NB193 Demo11_Data_sources % terraform apply -auto-approve
data.aws_region.current: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

current_region = Asia Pacific (Singapore)
current_region_id = ap-southeast-1
current_region_name = ap-southeast-1
bharathkumarraju@R77-NB193 Demo11_Data_sources %


bharathkumarraju@R77-NB193 Demo11_Data_sources % terraform apply -auto-approve
data.aws_caller_identity.current: Refreshing state...
data.aws_region.current: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

aws_account_id = 172586632398
current_region = Asia Pacific (Singapore)
current_region_id = ap-southeast-1
current_region_name = ap-southeast-1
bharathkumarraju@R77-NB193 Demo11_Data_sources %

bharathkumarraju@R77-NB193 Demo11_Data_sources % terraform apply -auto-approve
data.aws_region.current: Refreshing state...
data.aws_caller_identity.current: Refreshing state...
data.aws_availability_zones.list_zones: Refreshing state...

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.

Outputs:

aws_account_id = 172586632398
azs = [
  "ap-southeast-1a",
  "ap-southeast-1b",
  "ap-southeast-1c",
]
current_region = Asia Pacific (Singapore)
current_region_id = ap-southeast-1
current_region_name = ap-southeast-1
bharathkumarraju@R77-NB193 Demo11_Data_sources %




