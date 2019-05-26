provider "aws" {
    region = "${var.region}"
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
}

resource "aws_instance" "ec2" {
  count = "${var.instance_count}"
  ami = "${var.ami}"
  instance_type = "${var.instance_type}"
  security_groups = ["${aws_security_group.allow_ssh.name}"]
  tags {
      name="${element(var.instance_tag_name, count.index) }"
  }
}
