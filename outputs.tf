output "app_ec2_id" {
  value = "${aws_instance.this.*.id}"
}

output "private_ip" {
  value = "${aws_instance.this.*.private_ip}"
}

output "public_ip" {
  value = "${aws_instance.this.*.public_ip}"
}

output "app_ebs_id" {
  value = "${aws_ebs_volume.this.*.id}"
}

output "app_sg_id" {
  value = "${aws_security_group.server.id}"
}

output "id" {
  description = "Contains the EIP allocation ID"
  value       = "${aws_eip.this.id}"
}

output "public_eip" {
  description = "Contains the public IP address"
  value       = "${aws_eip.this.public_ip}"
}

output "public_dns" {
  description = "Public DNS associated with the Elastic IP address"
  value       = "${aws_eip.this.public_dns}"
}