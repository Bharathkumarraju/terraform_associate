provider "google" {
  credentials = file("../account.json")
  project = "srianjaneyam"
  region = "asia-southeast1"
  zone = "asia-southeast1-c"
}

resource "google_project_service" "api" {
  for_each = toset([
    "cloudresourcemanager.googleapis.com",
    "compute.googleapis.com"
  ])
  disable_on_destroy = false
  service = each.value
}

resource "google_compute_firewall" "web" {
  name = "web-access"
  network = "default"
  source_ranges = ["0.0.0.0/0"]
  allow {
    protocol = "tcp"
    ports = ["80", "443"]
  }
}

resource "google_compute_instance" "bk_server" {
  name = "bharath-gce-server"
  machine_type = "f1-micro"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }
  network_interface {
    network = "default"  // gives private IP
    access_config {} // gives public IP
  }
  metadata_startup_script = <<EOF
#!/bin/bash
apt update -y
apt install apache2 -y
echo "<h2>Web server on GCP built by TF!</h2>" > /var/www/html/index.html
systemctl restart apache2
EOF
  depends_on = [google_project_service.api, google_compute_firewall.web ]

}