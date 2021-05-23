output "name" {
  description = "The name of the database."
  value = mysql_database.this.name
}

output "user" {
  description = "The name of the user."
  value = mysql_user.this.user    
}
