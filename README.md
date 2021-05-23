# Simple Terraform module for managing mysql

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.13.0, < 0.14 |
| kaplanmaxe/mysql | 1.9.4 |

## Providers

| Name | Version |
|------|---------|
| mysql | 1.9.4  |

## Resources

| Name |
|------|
| [mysql_database](https://www.terraform.io/docs/providers/mysql/r/database.html) |
| [mysql_user](https://www.terraform.io/docs/providers/mysql/r/user.html) |
| [mysql_grant](https://www.terraform.io/docs/providers/mysql/r/grant.html) |

## How to Use

```
module "microservice" {
  source        = "./"
  endpoint      = "localhost"
  root_username = "root"
  root_password = "root"
  database      = "microservice_db"
  user          = "microservice_user"
  host          = "localhost"
  password      = "abc123"
  privileges    = ["SELECT", "INSERT", "UPDATE", "DELETE","CREATE"]
}

```
