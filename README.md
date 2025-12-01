
# infra-core

A library of reusable Terraform modules for multi-cloud infrastructure (AWS, GCP, Hetzner, Contabo).

## Modules

- [vm](./modules/vm): Creates a virtual machine (EC2, GCE).
- [vpc](./modules/vpc): Creates a VPC and subnet.
- [db](./modules/db): Creates a database instance (RDS, Cloud SQL).
- [tailscale](./modules/tailscale): Joins a VM to a Tailscale mesh.
- [k8s](./modules/k8s): Creates a Kubernetes cluster (EKS, GKE).

## Examples

- [aws-dev](./examples/aws-dev): An example of using the modules to create a development environment in AWS.

## CI/CD

The repository uses GitHub Actions to lint the Terraform code with `terraform fmt`, `tflint`, and `tfsec`.

## Documentation

For more information, see the [infra-docs](https://v-grand.github.io/infra-docs/).
