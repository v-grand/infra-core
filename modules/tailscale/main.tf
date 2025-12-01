
# main.tf for tailscale module

resource "null_resource" "tailscale_join" {
  triggers = {
    instance_id = var.instance_id
  }

  provisioner "remote-exec" {
    inline = [
      "curl -fsSL https://tailscale.com/install.sh | sh",
      "sudo tailscale up --authkey=${var.auth_key}"
    ]

    connection {
      type        = "ssh"
      user        = var.ssh_user
      private_key = file(var.private_key_path)
      host        = var.host
    }
  }
}
