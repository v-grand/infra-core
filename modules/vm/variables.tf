
# variables.tf for vm module

variable "provider" {
  description = "Cloud provider (aws or gcp)"
  type        = string
}

variable "ami" {
  description = "AMI for AWS EC2 instance"
  type        = string
  default     = null
}

variable "instance_type" {
  description = "Instance type for the VM"
  type        = string
}

variable "user_data" {
  description = "User data for the VM"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags for the VM"
  type        = map(string)
  default     = {}
}

variable "name" {
  description = "Name of the GCP instance"
  type        = string
  default     = null
}

variable "zone" {
  description = "Zone for the GCP instance"
  type        = string
  default     = null
}

variable "image" {
  description = "Image for the GCP instance"
  type        = string
  default     = null
}
