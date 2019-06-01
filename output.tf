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