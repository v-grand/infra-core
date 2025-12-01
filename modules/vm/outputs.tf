
# outputs.tf for vm module

output "instance_id" {
  description = "ID of the created instance"
  value       = var.provider == "aws" ? aws_instance.this[0].id : google_compute_instance.this[0].id
}

output "public_ip" {
  description = "Public IP of the created instance"
  value       = var.provider == "aws" ? aws_instance.this[0].public_ip : google_compute_instance.this[0].network_interface[0].access_config[0].nat_ip
}
