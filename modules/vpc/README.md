
# VPC Module

This module creates a VPC and a subnet in AWS or GCP.

## Usage

```hcl
module "vpc" {
  source = "../modules/vpc"

  provider          = "aws"
  cidr_block        = "10.0.0.0/16"
  subnet_cidr_block = "10.0.1.0/24"
  tags = {
    Name = "my-vpc"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| provider | Cloud provider (aws or gcp) | `string` | n/a | yes |
| cidr_block | CIDR block for the VPC | `string` | `null` | no |
| subnet_cidr_block | CIDR block for the subnet | `string` | n/a | yes |
| tags | Tags for the resources | `map(string)` | `{}` | no |
| name | Name of the GCP network | `string` | `null` | no |
| region | Region for the GCP subnetwork | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| vpc_id | ID of the created VPC/Network |
| subnet_id | ID of the created subnet |

## Documentation

For more information, see the [infra-docs](https://v-grand.github.io/infra-docs/en/aws/).
