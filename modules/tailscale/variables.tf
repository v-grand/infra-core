
# variables.tf for tailscale module

variable "instance_id" {
  description = "The ID of the instance to join to the Tailscale mesh. Used to trigger the provisioner."
  type        = string
}

variable "auth_key" {
  description = "Tailscale authentication key"
  type        = string
  sensitive   = true
}

variable "ssh_user" {
  description = "SSH user for the instance"
  type        = string
}

variable "private_key_path" {
  description = "Path to the private key for SSH connection"
  type        = string
}

variable "host" {
  description = "Host IP or DNS name to connect to via SSH"
  type        = string
}
