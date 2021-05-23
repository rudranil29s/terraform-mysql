# Create a Database
resource "mysql_database" "this" {
  name       = var.database
}

resource "mysql_user" "this" {
  user       = var.user
  host       = var.host
  plaintext_password = var.password
}

resource "mysql_grant" "this" {
  user       =  mysql_user.this.user
  host       =  var.host
  database   =  mysql_database.this.name
  privileges =  var.privileges
}
