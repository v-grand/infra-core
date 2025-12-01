
# variables.tf for db module

variable "provider" {
  description = "Cloud provider (aws or gcp)"
  type        = string
}

variable "allocated_storage" {
  description = "Allocated storage for the database"
  type        = number
  default     = null
}

variable "engine" {
  description = "Database engine for AWS RDS"
  type        = string
  default     = null
}

variable "engine_version" {
  description = "Database engine version for AWS RDS"
  type        = string
  default     = null
}

variable "instance_class" {
  description = "Instance class for the database"
  type        = string
}

variable "db_name" {
  description = "Name of the database"
  type        = string
}

variable "username" {
  description = "Username for the database"
  type        = string
  default     = null
}

variable "password" {
  description = "Password for the database"
  type        = string
  default     = null
  sensitive   = true
}

variable "parameter_group_name" {
  description = "Parameter group name for AWS RDS"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
  default     = {}
}

variable "database_version" {
  description = "Database version for GCP Cloud SQL"
  type        = string
  default     = null
}

variable "region" {
  description = "Region for the GCP Cloud SQL instance"
  type        = string
  default     = null
}
