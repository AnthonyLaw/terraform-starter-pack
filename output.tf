# locals {
#   this_id                           = "${compact(concat(coalescelist(aws_instance.ec2.*.id, aws_instance.ec2.*.id), list("")))}"
#   this_public_dns                   = "${compact(concat(coalescelist(aws_instance.ec2.*.public_dns, aws_instance.ec2.*.public_dns), list("")))}"
#   this_public_ip                    = "${compact(concat(coalescelist(aws_instance.ec2.*.public_ip, aws_instance.ec2.*.public_ip), list("")))}"
#  this_security_groups              = "${compact(concat(coalescelist(flatten(aws_instance.ec2.*.security_groups), flatten(aws_instance.ec2.*.security_groups)), list("")))}"
# }

output "id" {
  value       = "${aws_instance.ec2.*.id}"
  description = "IDs of instances"
}

output "public_dns" {
  description = "Public DNS names assigned to the instances."
  value       = "${aws_instance.ec2.*.public_dns}"
}

output "public_ip" {
  description = "Public IP addresses assigned to the instances"
  value       = "${aws_instance.ec2.*.public_ip}"
}

output "security_groups" {
  description = "List of associated security groups of instances"
  value       = "${aws_instance.ec2.*.security_groups}"
}