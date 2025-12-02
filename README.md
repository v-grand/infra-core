# infra-core

A comprehensive library of reusable Terraform modules designed for multi-cloud infrastructure management. This library supports AWS, GCP, Hetzner, and Contabo, allowing for flexible and agnostic infrastructure deployment.

## 🚀 Features

- **Multi-Cloud Support**: Seamlessly provision resources across major cloud providers.
- **Modular Design**: Reusable components for VMs, VPCs, Databases, and more.
- **Best Practices**: Built with security and scalability in mind.
- **Tailscale Integration**: Easy setup for secure mesh networking.

## 📦 Modules

| Module | Description | Supported Providers |
| :--- | :--- | :--- |
| [`vm`](./modules/vm) | Provision Virtual Machines (EC2, GCE) | AWS, GCP |
| [`vpc`](./modules/vpc) | Network configuration (VPC, Subnets) | AWS, GCP |
| [`db`](./modules/db) | Managed Databases (RDS, Cloud SQL) | AWS, GCP |
| [`tailscale`](./modules/tailscale) | Tailscale Mesh Networking | All |
| [`k8s`](./modules/k8s) | Kubernetes Clusters (EKS, GKE) | AWS, GCP |

## 🛠️ Prerequisites

- [Terraform](https://www.terraform.io/downloads) >= 1.0
- Cloud Provider Credentials (configured via environment variables or CLI)

## 📖 Usage

Here is a basic example of how to use the `vm` module in your Terraform configuration:

```hcl
module "my_web_server" {
  source        = "./modules/vm" # Or git source
  provider      = "aws"
  instance_type = "t3.micro"
  ami           = "ami-0c55b159cbfafe1f0"
  tags = {
    Environment = "dev"
  }
}
```

## 📓 Jupyter Notebook Examples

For interactive examples and detailed walkthroughs, check out our [Usage Guide](./usage_guide.ipynb).

## 🤝 Contributing

Contributions are welcome! Please read our [contribution guidelines](CONTRIBUTING.md) before submitting a pull request.

## 📄 License

This project is licensed under the MIT License.
