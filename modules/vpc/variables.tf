
# variables.tf for vpc module

variable "provider" {
  description = "Cloud provider (aws or gcp)"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block for the VPC"
  type        = string
  default     = null
}

variable "subnet_cidr_block" {
  description = "CIDR block for the subnet"
  type        = string
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "Name of the GCP network"
  type        = string
  default     = null
}

variable "region" {
  description = "Region for the GCP subnetwork"
  type        = string
  default     = null
}
