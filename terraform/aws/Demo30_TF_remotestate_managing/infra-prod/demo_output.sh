
bharathkumarraju@R77-NB193 infra-all % terraform state mv -state-out="terraform.tfstate" aws_eip.prod-ipaddress1 aws_eip.prod-ipaddress1
Move "aws_eip.prod-ipaddress1" to "aws_eip.prod-ipaddress1"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all % terraform state mv -state-out="terraform.tfstate" aws_eip.prod-ipaddress2 aws_eip.prod-ipaddress2
Move "aws_eip.prod-ipaddress2" to "aws_eip.prod-ipaddress2"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all %
bharathkumarraju@R77-NB193 infra-all % terraform state mv -state-out="terraform.tfstate" aws_instance.web-prod aws_instance.web-prod
Move "aws_instance.web-prod" to "aws_instance.web-prod"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all %
bharathkumarraju@R77-NB193 infra-all % terraform state mv -state-out="terraform.tfstate" aws_security_group.web-prod aws_security_group.web-prod
Move "aws_security_group.web-prod" to "aws_security_group.web-prod"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all %


bharathkumarraju@R77-NB193 infra-prod % terraform init

Initializing the backend...
Do you want to copy existing state to the new backend?
  Pre-existing state was found while migrating the previous "local" backend to the
  newly configured "s3" backend. No existing state was found in the newly
  configured "s3" backend. Do you want to copy this state to the new "s3"
  backend? Enter "yes" to copy and "no" to start with an empty state.

  Enter a value: yes


Successfully configured the backend "s3"! Terraform will automatically
use this backend unless the backend configuration changes.

Initializing provider plugins...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v3.28.0...
- Installed hashicorp/aws v3.28.0 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumarraju@R77-NB193 infra-prod %


bharathkumarraju@R77-NB193 infra-prod % terraform plan
aws_eip.prod-ipaddress1: Refreshing state... [id=eipalloc-03b8ff7c578b5a654]
aws_eip.prod-ipaddress2: Refreshing state... [id=eipalloc-0238326a7a6d6bff4]
aws_security_group.web-prod: Refreshing state... [id=sg-02a9cb5e7d9f003a8]
aws_instance.web-prod: Refreshing state... [id=i-0fe96ebbb335f83be]

No changes. Infrastructure is up-to-date.

This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
bharathkumarraju@R77-NB193 infra-prod %



bharathkumarraju@R77-NB193 infra-prod % terraform apply -auto-approve
aws_eip.prod-ipaddress2: Refreshing state... [id=eipalloc-0238326a7a6d6bff4]
aws_eip.prod-ipaddress1: Refreshing state... [id=eipalloc-03b8ff7c578b5a654]
aws_security_group.web-prod: Refreshing state... [id=sg-02a9cb5e7d9f003a8]
aws_instance.web-prod: Refreshing state... [id=i-0fe96ebbb335f83be]

Apply complete! Resources: 0 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 infra-prod % terraform state list
data.aws_ami.latest_amazon_linux
data.aws_availability_zones.available
aws_eip.prod-ipaddress1
aws_eip.prod-ipaddress2
aws_instance.web-prod
aws_security_group.web-prod
bharathkumarraju@R77-NB193 infra-prod %

