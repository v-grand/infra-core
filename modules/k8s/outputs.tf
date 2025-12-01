
# outputs.tf for k8s module

output "cluster_id" {
  description = "ID of the created Kubernetes cluster"
  value       = var.provider == "aws" ? aws_eks_cluster.this[0].id : google_container_cluster.this[0].id
}

output "cluster_endpoint" {
  description = "Endpoint of the created Kubernetes cluster"
  value       = var.provider == "aws" ? aws_eks_cluster.this[0].endpoint : google_container_cluster.this[0].endpoint
}
