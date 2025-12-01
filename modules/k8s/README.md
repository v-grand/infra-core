
# K8s Module

This module creates a Kubernetes cluster in AWS (EKS) or GCP (GKE).

## Usage

```hcl
module "k8s" {
  source = "../modules/k8s"

  provider     = "aws"
  cluster_name = "my-cluster"
  role_arn     = "arn:aws:iam::123456789012:role/EKSClusterRole"
  subnet_ids   = ["subnet-12345", "subnet-67890"]
  tags = {
    Name = "my-k8s-cluster"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| provider | Cloud provider (aws or gcp) | `string` | n/a | yes |
| cluster_name | Name of the Kubernetes cluster | `string` | n/a | yes |
| role_arn | ARN of the IAM role for EKS | `string` | `null` | no |
| subnet_ids | List of subnet IDs for EKS | `list(string)` | `null` | no |
| tags | Tags for the resources | `map(string)` | `{}` | no |
| location | Location for the GKE cluster | `string` | `null` | no |
| initial_node_count | Initial number of nodes for the GKE cluster | `number` | `1` | no |

## Outputs

| Name | Description |
|------|-------------|
| cluster_id | ID of the created Kubernetes cluster |
| cluster_endpoint | Endpoint of the created Kubernetes cluster |

## Documentation

- [AWS Documentation](https://v-grand.github.io/infra-docs/en/aws/)
- [GCP Documentation](https://v-grand.github.io/infra-docs/en/gcp/k8s/)

🚧 The documentation for GCP is under development. Please follow the updates in [infra-docs](https://v-grand.github.io/infra-docs/).
