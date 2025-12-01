
# main.tf for vm module

# AWS EC2 Instance
resource "aws_instance" "this" {
  count = var.provider == "aws" ? 1 : 0

  ami           = var.ami
  instance_type = var.instance_type
  user_data     = var.user_data
  tags          = var.tags

  lifecycle {
    prevent_destroy = true
  }
}

# GCP Compute Instance
resource "google_compute_instance" "this" {
  count = var.provider == "gcp" ? 1 : 0

  name         = var.name
  machine_type = var.instance_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = "default"
  }

  metadata = {
    user-data = var.user_data
  }

  labels = var.tags

  lifecycle {
    prevent_destroy = true
  }
}
