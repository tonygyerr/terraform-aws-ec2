output "app_ec2_id" {
  value = "${module.ec2.app_ec2_id}"
}

output "app_ebs_id" {
  value = "${module.ec2.app_ebs_id}"
}

output "app_sg_id" {
  value = "${module.ec2.app_sg_id}"
}

output "public_ip" {
  value = "${module.ec2.public_ip}"
}

output "id" {
  description = "Contains the EIP allocation ID"
  value       = "${module.ec2.id}"
}

output "public_eip" {
  description = "Contains the public IP address"
  value       = "${module.ec2.public_ip}"
}

output "public_dns" {
  description = "Public DNS associated with the Elastic IP address"
  value       = "${module.ec2.public_dns}"
}