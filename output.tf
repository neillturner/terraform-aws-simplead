output "instance-profile-id" {
  value = "${aws_iam_instance_profile.ec2-ssm-role-profile.id}"
}

output "dir_dns_ip_addresses" {
  value = "${aws_directory_service_directory.my_simplead.dns_ip_addresses}"
}

output "dir_id" {
  value = "${aws_directory_service_directory.my_simplead.id}"
}

output "access_url" {
  value = "${aws_directory_service_directory.my_simplead.access_url}"
}

output "security_group_id" {
  value = "${aws_directory_service_directory.my_simplead.security_group_id}"
}

output "dir_domain_name" {
  value = "${var.domain_name}"
}

output "dir_computer_ou" {
  value = "${var.computer_ou}"
}

output "dir_dns_name" {
  value = "${aws_directory_service_directory.my_simplead.name}"
}
