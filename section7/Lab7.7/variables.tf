variable "env" {
  type    = string
  default = "mgmt"
}
variable "location-name" {
  type    = string
  default = "east us"
}
variable "admin_password" {
  type      = string
  default   = "Password1234!"
  sensitive = true # example for terraform v14
}

variable "access-from" {
  default = "73.1.137.31"
}
