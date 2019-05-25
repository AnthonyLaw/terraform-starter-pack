provider "aws" {
    region = "ap-southeast-1"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "ec2" {
  ami = "ami-0dad20bd1b9c8c004"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.allow_ssh.name}"]
  tags {
      name="new VM"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow ssh"
  description = "only ssh"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}
