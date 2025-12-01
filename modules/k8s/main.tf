
# main.tf for k8s module

# AWS EKS
resource "aws_eks_cluster" "this" {
  count = var.provider == "aws" ? 1 : 0

  name     = var.cluster_name
  role_arn = var.role_arn

  vpc_config {
    subnet_ids = var.subnet_ids
  }

  tags = var.tags

  lifecycle {
    prevent_destroy = true
  }
}

# GCP GKE
resource "google_container_cluster" "this" {
  count = var.provider == "gcp" ? 1 : 0

  name     = var.cluster_name
  location = var.location

  initial_node_count = var.initial_node_count

  lifecycle {
    prevent_destroy = true
  }
}
