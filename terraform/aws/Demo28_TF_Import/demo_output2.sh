bharathkumarraju@R77-NB193 Demo28_TF_Import % terraform import aws_instance.node1 i-09d65fbff92a76a44
aws_instance.node1: Importing from ID "i-09d65fbff92a76a44"...
aws_instance.node1: Import prepared!
  Prepared aws_instance for import
aws_instance.node1: Refreshing state... [id=i-09d65fbff92a76a44]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.

bharathkumarraju@R77-NB193 Demo28_TF_Import %


bharathkumarraju@R77-NB193 Demo28_TF_Import % terraform plan
aws_instance.node1: Refreshing state... [id=i-09d65fbff92a76a44]

No changes. Infrastructure is up-to-date.

This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
bharathkumarraju@R77-NB193 Demo28_TF_Import %




bharathkumarraju@R77-NB193 Demo28_TF_Import % terraform import aws_instance.node2 i-018e03698f8b6d900
aws_instance.node2: Importing from ID "i-018e03698f8b6d900"...
aws_instance.node2: Import prepared!
  Prepared aws_instance for import
aws_instance.node2: Refreshing state... [id=i-018e03698f8b6d900]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.

bharathkumarraju@R77-NB193 Demo28_TF_Import % terraform import aws_instance.node3 i-0f958b7a614f0a06c
aws_instance.node3: Importing from ID "i-0f958b7a614f0a06c"...
aws_instance.node3: Import prepared!
  Prepared aws_instance for import
aws_instance.node3: Refreshing state... [id=i-0f958b7a614f0a06c]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.

bharathkumarraju@R77-NB193 Demo28_TF_Import %




bharathkumarraju@R77-NB193 Demo28_TF_Import % terraform plan
aws_instance.node1: Refreshing state... [id=i-09d65fbff92a76a44]
aws_instance.node2: Refreshing state... [id=i-018e03698f8b6d900]
aws_instance.node3: Refreshing state... [id=i-0f958b7a614f0a06c]

No changes. Infrastructure is up-to-date.

This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
bharathkumarraju@R77-NB193 Demo28_TF_Import %



bharathkumarraju@R77-NB193 Demo28_TF_Import % terraform import aws_security_group.bksg sg-00b43066
aws_security_group.bksg: Importing from ID "sg-00b43066"...
aws_security_group.bksg: Import prepared!
  Prepared aws_security_group for import
aws_security_group.bksg: Refreshing state... [id=sg-00b43066]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.

bharathkumarraju@R77-NB193 Demo28_TF_Import %




bharathkumarraju@R77-NB193 Demo28_TF_Import % terraform plan
aws_security_group.bksg: Refreshing state... [id=sg-00b43066]
aws_instance.node2: Refreshing state... [id=i-018e03698f8b6d900]
aws_instance.node1: Refreshing state... [id=i-09d65fbff92a76a44]
aws_instance.node3: Refreshing state... [id=i-0f958b7a614f0a06c]

No changes. Infrastructure is up-to-date.

This means that Terraform did not detect any differences between your
configuration and real physical resources that exist. As a result, no
actions need to be performed.
bharathkumarraju@R77-NB193 Demo28_TF_Import %




