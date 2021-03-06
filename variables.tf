# define variable
variable "region" {
  default = "ap-southeast-1"
}

variable "ami" {
  default = "ami-0dad20bd1b9c8c004"
}

variable "instance_count" {
    default = "1"
}

variable "instance_type" {
    default = "t2.small"
}

variable "instance_tag_name" {
    type = "list"
    default = ["vm-1"]
}


variable "keypair_name" {
  default = "aws-keypair"
}
