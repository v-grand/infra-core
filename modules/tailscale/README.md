
# Tailscale Module

This module joins a VM to a Tailscale mesh.

## Usage

```hcl
module "tailscale" {
  source = "../modules/tailscale"

  instance_id      = module.vm.instance_id
  auth_key         = "your-tailscale-auth-key"
  ssh_user         = "ec2-user"
  private_key_path = "~/.ssh/id_rsa"
  host             = module.vm.public_ip
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| instance_id | The ID of the instance to join to the Tailscale mesh. Used to trigger the provisioner. | `string` | n/a | yes |
| auth_key | Tailscale authentication key | `string` | n/a | yes |
| ssh_user | SSH user for the instance | `string` | n/a | yes |
| private_key_path | Path to the private key for SSH connection | `string` | n/a | yes |
| host | Host IP or DNS name to connect to via SSH | `string` | n/a | yes |

## Outputs

This module has no outputs.

## Documentation

For more information, see the [infra-docs](https://v-grand.github.io/infra-docs/en/aws/).
