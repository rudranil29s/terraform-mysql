variable "endpoint" {
  type        = string    
  description = "(Required) The address of the MySQL server to use. Most often a 'hostname:port' pair"
  default     = "localhost"
}

variable "root_username" {
  type        = string
  description = "(Required) Username to use to authenticate with the server, can also be sourced from the MYSQL_USERNAME environment variable."
  default     = "root" 
}

variable "root_password" {
  type        = string
  description = "Password for the given user, if that user has a password, can also be sourced from the MYSQL_PASSWORD environment variable."
  default     = "root" 
}

variable "database" {
  type        = string
  description = "The name of the database. This must be unique within a given MySQL server and may or may not be case-sensitive depending on the operating system on which the MySQL server is running."
  default     = "test" 
}

variable "user" {
  type        = string
  description = "(Required) The name of the user."
  default     = "test" 
}

variable "host" {
    type        = string
    description = "(Optional) The source host of the user. Defaults to 'localhost'. "
    default     = "localhost"
}

variable "password" {
    type        = string
    description = "Define user password"
    default     = "root"
}

variable "privileges" {
    type        = list
    description = "A list of privileges to grant to the user. Refer to a list of privileges. "
    default     = ["SELECT", "INSERT", "UPDATE", "DELETE"]
} 