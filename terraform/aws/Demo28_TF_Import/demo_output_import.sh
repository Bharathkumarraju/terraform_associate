bharathkumarraju@R77-NB193 Demo28_TF_Import % terraform init

Initializing the backend...

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
bharathkumarraju@R77-NB193 Demo28_TF_Import %

########################################################## Terraform Import ######################################################

bharathkumarraju@R77-NB193 Demo28_TF_Import % terraform import aws_instance.node1 i-0fe4e6f55e94b04ad
aws_instance.node1: Importing from ID "i-0fe4e6f55e94b04ad"...
aws_instance.node1: Import prepared!
  Prepared aws_instance for import
aws_instance.node1: Refreshing state... [id=i-0fe4e6f55e94b04ad]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.

bharathkumarraju@R77-NB193 Demo28_TF_Import %

########################################################## Terraform Import ######################################################

bharathkumarraju@R77-NB193 Demo28_TF_Import % terraform plan

Error: Missing required argument

  on main.tf line 5, in resource "aws_instance" "node1":
   5: resource "aws_instance" "node1" {

The argument "instance_type" is required, but no definition was found.


Error: Missing required argument

  on main.tf line 5, in resource "aws_instance" "node1":
   5: resource "aws_instance" "node1" {

The argument "ami" is required, but no definition was found.

bharathkumarraju@R77-NB193 Demo28_TF_Import %




