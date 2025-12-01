
# main.tf for vpc module

# AWS VPC
resource "aws_vpc" "this" {
  count = var.provider == "aws" ? 1 : 0

  cidr_block = var.cidr_block
  tags       = var.tags

  lifecycle {
    prevent_destroy = true
  }
}

# AWS Subnet
resource "aws_subnet" "this" {
  count = var.provider == "aws" ? 1 : 0

  vpc_id     = aws_vpc.this[0].id
  cidr_block = var.subnet_cidr_block
  tags       = var.tags

  lifecycle {
    prevent_destroy = true
  }
}

# GCP Network
resource "google_compute_network" "this" {
  count = var.provider == "gcp" ? 1 : 0

  name                    = var.name
  auto_create_subnetworks = false

  lifecycle {
    prevent_destroy = true
  }
}

# GCP Subnet
resource "google_compute_subnetwork" "this" {
  count = var.provider == "gcp" ? 1 : 0

  name          = "${var.name}-subnet"
  ip_cidr_range = var.subnet_cidr_block
  network       = google_compute_network.this[0].id
  region        = var.region

  lifecycle {
    prevent_destroy = true
  }
}
