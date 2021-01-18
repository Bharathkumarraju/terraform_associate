bharathkumarraju@R77-NB193 Demo4 % export GCLOUD_KEYFILE_JSON="../account.json"
bharathkumarraju@R77-NB193 Demo4 % export GCLOUD_PROJECT="srianjaneyam"
bharathkumarraju@R77-NB193 Demo4 % export GCLOUD_REGION="asia-southeast1"
bharathkumarraju@R77-NB193 Demo4 % export GCLOUD_ZONE="asia-southeast1-c"
bharathkumarraju@R77-NB193 Demo4 %


bharathkumarraju@R77-NB193 Demo4 % terraform init

Initializing the backend...

Initializing provider plugins...
- Checking for available provider plugins...
- Downloading plugin for provider "google" (hashicorp/google) 3.52.0...

The following providers do not have any version constraints in configuration,
so the latest version was installed.

To prevent automatic upgrades to new major versions that may contain breaking
changes, it is recommended to add version = "..." constraints to the
corresponding provider blocks in configuration, with the constraint strings
suggested below.

* provider.google: version = "~> 3.52"

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
bharathkumarraju@R77-NB193 Demo4 %



bharathkumarraju@R77-NB193 Demo4 % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # google_compute_instance.bk_server will be created
  + resource "google_compute_instance" "bk_server" {
      + can_ip_forward       = false
      + cpu_platform         = (known after apply)
      + current_status       = (known after apply)
      + deletion_protection  = false
      + guest_accelerator    = (known after apply)
      + id                   = (known after apply)
      + instance_id          = (known after apply)
      + label_fingerprint    = (known after apply)
      + machine_type         = "f1-micro"
      + metadata_fingerprint = (known after apply)
      + min_cpu_platform     = (known after apply)
      + name                 = "bharath-gce-server"
      + project              = (known after apply)
      + self_link            = (known after apply)
      + tags_fingerprint     = (known after apply)
      + zone                 = (known after apply)

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + image  = "debian-cloud/debian-10"
              + labels = (known after apply)
              + size   = (known after apply)
              + type   = (known after apply)
            }
        }

      + confidential_instance_config {
          + enable_confidential_compute = (known after apply)
        }

      + network_interface {
          + name               = (known after apply)
          + network            = "default"
          + network_ip         = (known after apply)
          + subnetwork         = (known after apply)
          + subnetwork_project = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }

      + scheduling {
          + automatic_restart   = (known after apply)
          + on_host_maintenance = (known after apply)
          + preemptible         = (known after apply)

          + node_affinities {
              + key      = (known after apply)
              + operator = (known after apply)
              + values   = (known after apply)
            }
        }
    }

Plan: 1 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo4 %


bharathkumarraju@R77-NB193 Demo4 % terraform plan
Refreshing Terraform state in-memory prior to plan...
The refreshed state will be used to calculate this plan, but will not be
persisted to local or remote state storage.


------------------------------------------------------------------------

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create




  + resource "google_compute_firewall" "web" {
      + creation_timestamp = (known after apply)
      + destination_ranges = (known after apply)
      + direction          = (known after apply)
      + enable_logging     = (known after apply)
      + id                 = (known after apply)
      + name               = "web-access"
      + network            = "default"
      + priority           = 1000
      + project            = (known after apply)
      + self_link          = (known after apply)
      + source_ranges      = [
          + "0.0.0.0/0",
        ]

      + allow {
          + ports    = [
              + "80",
              + "443",
            ]
          + protocol = "tcp"
        }
    }

  # google_compute_instance.bk_server will be created
  + resource "google_compute_instance" "bk_server" {
      + can_ip_forward          = false
      + cpu_platform            = (known after apply)
      + current_status          = (known after apply)
      + deletion_protection     = false
      + guest_accelerator       = (known after apply)
      + id                      = (known after apply)
      + instance_id             = (known after apply)
      + label_fingerprint       = (known after apply)
      + machine_type            = "f1-micro"
      + metadata_fingerprint    = (known after apply)
      + metadata_startup_script = <<~EOT
            #!/bin/bash
            apt update -y
            apt install apache2 -y
            echo "<h2>Web server on GCP built by TF!</h2>" > /var/www/html/index.html
            systemctl restart apache2
        EOT
      + min_cpu_platform        = (known after apply)
      + name                    = "bharath-gce-server"
      + project                 = (known after apply)
      + self_link               = (known after apply)
      + tags_fingerprint        = (known after apply)
      + zone                    = (known after apply)

      + boot_disk {
          + auto_delete                = true
          + device_name                = (known after apply)
          + disk_encryption_key_sha256 = (known after apply)
          + kms_key_self_link          = (known after apply)
          + mode                       = "READ_WRITE"
          + source                     = (known after apply)

          + initialize_params {
              + image  = "debian-cloud/debian-10"
              + labels = (known after apply)
              + size   = (known after apply)
              + type   = (known after apply)
            }
        }

      + confidential_instance_config {
          + enable_confidential_compute = (known after apply)
        }

      + network_interface {
          + name               = (known after apply)
          + network            = "default"
          + network_ip         = (known after apply)
          + subnetwork         = (known after apply)
          + subnetwork_project = (known after apply)

          + access_config {
              + nat_ip       = (known after apply)
              + network_tier = (known after apply)
            }
        }

      + scheduling {
          + automatic_restart   = (known after apply)
          + on_host_maintenance = (known after apply)
          + preemptible         = (known after apply)

          + node_affinities {
              + key      = (known after apply)
              + operator = (known after apply)
              + values   = (known after apply)
            }
        }
    }

  # google_project_service.api["cloudresourcemanager.googleapis.com"] will be created
  + resource "google_project_service" "api" {
      + disable_on_destroy = false
      + id                 = (known after apply)
      + project            = (known after apply)
      + service            = "cloudresourcemanager.googleapis.com"
    }

  # google_project_service.api["compute.googleapis.com"] will be created
  + resource "google_project_service" "api" {
      + disable_on_destroy = false
      + id                 = (known after apply)
      + project            = (known after apply)
      + service            = "compute.googleapis.com"
    }

Plan: 4 to add, 0 to change, 0 to destroy.

------------------------------------------------------------------------

Note: You didn't specify an "-out" parameter to save this plan, so Terraform
can't guarantee that exactly these actions will be performed if
"terraform apply" is subsequently run.

bharathkumarraju@R77-NB193 Demo4 %


bharathkumarraju@R77-NB193 Demo4 % terraform apply -auto-approve
google_project_service.api["compute.googleapis.com"]: Creating...
google_project_service.api["cloudresourcemanager.googleapis.com"]: Creating...
google_compute_firewall.web: Creating...
google_project_service.api["cloudresourcemanager.googleapis.com"]: Creation complete after 4s [id=srianjaneyam/cloudresourcemanager.googleapis.com]
google_project_service.api["compute.googleapis.com"]: Creation complete after 4s [id=srianjaneyam/compute.googleapis.com]
google_compute_firewall.web: Still creating... [10s elapsed]
google_compute_firewall.web: Creation complete after 12s [id=projects/srianjaneyam/global/firewalls/web-access]
google_compute_instance.bk_server: Creating...
google_compute_instance.bk_server: Still creating... [10s elapsed]
google_compute_instance.bk_server: Creation complete after 15s [id=projects/srianjaneyam/zones/asia-southeast1-c/instances/bharath-gce-server]

Apply complete! Resources: 4 added, 0 changed, 0 destroyed.
bharathkumarraju@R77-NB193 Demo4 %


bharathkumarraju@R77-NB193 Demo4 % terraform destroy -auto-approve
google_project_service.api["cloudresourcemanager.googleapis.com"]: Refreshing state... [id=srianjaneyam/cloudresourcemanager.googleapis.com]
google_project_service.api["compute.googleapis.com"]: Refreshing state... [id=srianjaneyam/compute.googleapis.com]
google_compute_firewall.web: Refreshing state... [id=projects/srianjaneyam/global/firewalls/web-access]
google_compute_instance.bk_server: Refreshing state... [id=projects/srianjaneyam/zones/asia-southeast1-c/instances/bharath-gce-server]
google_compute_instance.bk_server: Destroying... [id=projects/srianjaneyam/zones/asia-southeast1-c/instances/bharath-gce-server]
google_compute_instance.bk_server: Still destroying... [id=projects/srianjaneyam/zones/asia-southeast1-c/instances/bharath-gce-server, 10s elapsed]
google_compute_instance.bk_server: Still destroying... [id=projects/srianjaneyam/zones/asia-southeast1-c/instances/bharath-gce-server, 20s elapsed]
google_compute_instance.bk_server: Destruction complete after 22s
google_project_service.api["compute.googleapis.com"]: Destroying... [id=srianjaneyam/compute.googleapis.com]
google_project_service.api["cloudresourcemanager.googleapis.com"]: Destroying... [id=srianjaneyam/cloudresourcemanager.googleapis.com]
google_compute_firewall.web: Destroying... [id=projects/srianjaneyam/global/firewalls/web-access]
google_project_service.api["compute.googleapis.com"]: Destruction complete after 0s
google_project_service.api["cloudresourcemanager.googleapis.com"]: Destruction complete after 0s
google_compute_firewall.web: Still destroying... [id=projects/srianjaneyam/global/firewalls/web-access, 10s elapsed]
google_compute_firewall.web: Destruction complete after 12s

Destroy complete! Resources: 4 destroyed.
bharathkumarraju@R77-NB193 Demo4 %


