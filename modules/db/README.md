
# DB Module

This module creates a database instance in AWS (RDS) or GCP (Cloud SQL).

## Usage

```hcl
module "db" {
  source = "../modules/db"

  provider          = "aws"
  allocated_storage = 20
  engine            = "mysql"
  engine_version    = "8.0"
  instance_class    = "db.t2.micro"
  db_name           = "mydb"
  username          = "user"
  password          = "password"
  tags = {
    Name = "my-db"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| provider | Cloud provider (aws or gcp) | `string` | n/a | yes |
| allocated_storage | Allocated storage for the database | `number` | `null` | no |
| engine | Database engine for AWS RDS | `string` | `null` | no |
| engine_version | Database engine version for AWS RDS | `string` | `null` | no |
| instance_class | Instance class for the database | `string` | n/a | yes |
| db_name | Name of the database | `string` | n/a | yes |
| username | Username for the database | `string` | `null` | no |
| password | Password for the database | `string` | `null` | no |
| parameter_group_name | Parameter group name for AWS RDS | `string` | `null` | no |
| tags | Tags for the resources | `map(string)` | `{}` | no |
| database_version | Database version for GCP Cloud SQL | `string` | `null` | no |
| region | Region for the GCP Cloud SQL instance | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| db_instance_id | ID of the created database instance |
| db_instance_endpoint | Endpoint of the created database instance |

## Documentation

- [AWS Documentation](https://v-grand.github.io/infra-docs/en/aws/)
- [GCP Documentation](https://v-grand.github.io/infra-docs/en/gcp/db/)

🚧 The documentation for GCP is under development. Please follow the updates in [infra-docs](https://v-grand.github.io/infra-docs/).
