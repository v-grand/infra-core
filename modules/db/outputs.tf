
# outputs.tf for db module

output "db_instance_id" {
  description = "ID of the created database instance"
  value       = var.provider == "aws" ? aws_db_instance.this[0].id : google_sql_database_instance.this[0].id
}

output "db_instance_endpoint" {
  description = "Endpoint of the created database instance"
  value       = var.provider == "aws" ? aws_db_instance.this[0].endpoint : google_sql_database_instance.this[0].self_link
}
