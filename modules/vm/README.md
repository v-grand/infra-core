
# VM Module

This module creates a virtual machine in AWS (EC2) or GCP (Compute Engine).

## Usage

```hcl
module "vm" {
  source = "../modules/vm"

  provider      = "aws"
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  tags = {
    Name = "my-instance"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| provider | Cloud provider (aws or gcp) | `string` | n/a | yes |
| ami | AMI for AWS EC2 instance | `string` | `null` | no |
| instance_type | Instance type for the VM | `string` | n/a | yes |
| user_data | User data for the VM | `string` | `null` | no |
| tags | Tags for the VM | `map(string)` | `{}` | no |
| name | Name of the GCP instance | `string` | `null` | no |
| zone | Zone for the GCP instance | `string` | `null` | no |
| image | Image for the GCP instance | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| instance_id | ID of the created instance |
| public_ip | Public IP of the created instance |

## Documentation

- [AWS Documentation](https://v-grand.github.io/infra-docs/en/aws/)
- [GCP Documentation](https://v-grand.github.io/infra-docs/en/gcp/vm/)

🚧 The documentation for GCP is under development. Please follow the updates in [infra-docs](https://v-grand.github.io/infra-docs/).
