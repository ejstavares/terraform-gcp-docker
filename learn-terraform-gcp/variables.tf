variable "project" { } ### see value into terraform.tfvars

variable "credentials_file" { } ### see value into terraform.tfvars

variable "region" {
  default = "us-central1"
}

variable "zone" {
  default = "us-central1-c"
}
