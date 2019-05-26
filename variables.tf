# define variable
variable "region" {
  default = "ap-southeast-1"
}

variable "access_key" {}
variable "secret_key" {}

variable "ami" {
  default = "ami-0dad20bd1b9c8c004"
}

variable "instance_type" {
    type = "list"
  default = ["t2.micro","t2.small","t2.medium","t2.large"]
  description = "Select instance type, recommand is t2.medium"
}


