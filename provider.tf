# Configure the MySQL provider
provider "mysql" {
  endpoint = var.endpoint
  username = var.root_username
  password = var.root_password
}