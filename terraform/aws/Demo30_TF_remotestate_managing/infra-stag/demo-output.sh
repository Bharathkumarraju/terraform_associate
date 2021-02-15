bharathkumarraju@R77-NB193 infra-all % terraform state mv -state-out="terraform.tfstate" aws_instance.web-stag aws_instance.web-stag
Move "aws_instance.web-stag" to "aws_instance.web-stag"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all % terraform state mv -state-out="terraform.tfstate" aws_security_group.web-stag aws_security_group.web-stag
Move "aws_security_group.web-stag" to "aws_security_group.web-stag"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all %

bharathkumarraju@R77-NB193 infra-all % cp terraform.tfstate ../infra-stag
bharathkumarraju@R77-NB193 infra-all % cd ../infra-stag
bharathkumarraju@R77-NB193 infra-stag % terraform init

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
bharathkumarraju@R77-NB193 infra-stag %



bharathkumarraju@R77-NB193 infra-all % cd ../infra-stag
bharathkumarraju@R77-NB193 infra-stag % terraform state pull > terraform.tfstate
bharathkumarraju@R77-NB193 infra-stag % ls -rtlh
total 56
-rw-r--r--  1 bharathkumarraju  staff   149B Feb 15 20:36 config.tf
-rw-r--r--  1 bharathkumarraju  staff   255B Feb 15 20:39 main.tf
-rw-r--r--  1 bharathkumarraju  staff    98B Feb 15 20:42 eip-stag.tf
-rw-r--r--  1 bharathkumarraju  staff   966B Feb 15 20:43 web-stag.tf
-rw-r--r--  1 bharathkumarraju  staff   2.1K Feb 15 23:47 demo-output.sh
-rw-r--r--  1 bharathkumarraju  staff   5.3K Feb 15 23:47 terraform.tfstate
bharathkumarraju@R77-NB193 infra-stag %

bharathkumarraju@R77-NB193 infra-stag % mv terraform.tfstate ../infra-all/
bharathkumarraju@R77-NB193 infra-stag %


bharathkumarraju@R77-NB193 infra-all % for i in $(terraform state list | grep aws_eip.stag); do terraform state mv -state-out="terraform.tfstate" $i $i; done
Move "aws_eip.stag-ip1" to "aws_eip.stag-ip1"
Successfully moved 1 object(s).
Move "aws_eip.stag-ip2" to "aws_eip.stag-ip2"
Successfully moved 1 object(s).
Move "aws_eip.stag-ip3" to "aws_eip.stag-ip3"
Successfully moved 1 object(s).
bharathkumarraju@R77-NB193 infra-all %


bharathkumarraju@R77-NB193 infra-all % mv terraform.tfstate ../infra-stag
bharathkumarraju@R77-NB193 infra-all % cd ../infra-stag
bharathkumarraju@R77-NB193 infra-stag % ls -rtlh
total 64
-rw-r--r--  1 bharathkumarraju  staff   149B Feb 15 20:36 config.tf
-rw-r--r--  1 bharathkumarraju  staff   255B Feb 15 20:39 main.tf
-rw-r--r--  1 bharathkumarraju  staff    98B Feb 15 20:42 eip-stag.tf
-rw-r--r--  1 bharathkumarraju  staff   966B Feb 15 20:43 web-stag.tf
-rw-r--r--  1 bharathkumarraju  staff   8.9K Feb 15 23:50 terraform.tfstate
-rw-r--r--  1 bharathkumarraju  staff   3.3K Feb 15 23:51 demo-output.sh
bharathkumarraju@R77-NB193 infra-stag % terraform state push terraform.tfstate
bharathkumarraju@R77-NB193 infra-stag %


