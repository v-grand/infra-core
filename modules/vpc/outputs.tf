
# outputs.tf for vpc module

output "vpc_id" {
  description = "ID of the created VPC/Network"
  value       = var.provider == "aws" ? aws_vpc.this[0].id : google_compute_network.this[0].id
}

output "subnet_id" {
  description = "ID of the created subnet"
  value       = var.provider == "aws" ? aws_subnet.this[0].id : google_compute_subnetwork.this[0].id
}
