
# main.tf for db module

# AWS RDS
resource "aws_db_instance" "this" {
  count = var.provider == "aws" ? 1 : 0

  allocated_storage    = var.allocated_storage
  engine               = var.engine
  engine_version       = var.engine_version
  instance_class       = var.instance_class
  name                 = var.db_name
  username             = var.username
  password             = var.password
  parameter_group_name = var.parameter_group_name
  skip_final_snapshot  = true
  tags                 = var.tags

  lifecycle {
    prevent_destroy = true
  }
}

# GCP Cloud SQL
resource "google_sql_database_instance" "this" {
  count = var.provider == "gcp" ? 1 : 0

  name             = var.db_name
  database_version = var.database_version
  region           = var.region

  settings {
    tier = var.instance_class
  }

  lifecycle {
    prevent_destroy = true
  }
}
