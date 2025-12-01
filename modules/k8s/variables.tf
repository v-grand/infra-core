
# variables.tf for k8s module

variable "provider" {
  description = "Cloud provider (aws or gcp)"
  type        = string
}

variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
}

variable "role_arn" {
  description = "ARN of the IAM role for EKS"
  type        = string
  default     = null
}

variable "subnet_ids" {
  description = "List of subnet IDs for EKS"
  type        = list(string)
  default     = null
}

variable "tags" {
  description = "Tags for the resources"
  type        = map(string)
  default     = {}
}

variable "location" {
  description = "Location for the GKE cluster"
  type        = string
  default     = null
}

variable "initial_node_count" {
  description = "Initial number of nodes for the GKE cluster"
  type        = number
  default     = 1
}
