resource "aws_directory_service_directory" "my_simplead" {
  type     = "SimpleAD"
  name     = "${var.domain_name}"
  short_name = "${var.short_name}"
  size     = "${var.size}"
  password = "${var.admin_password}"

  vpc_settings {
    vpc_id     =  "${var.vpc_id}"
    subnet_ids = ["${var.subnet_ids}"]
  }
}

resource "aws_vpc_dhcp_options" "my_simplead_dhcp" {
  domain_name          = "${var.domain_name}"
  domain_name_servers  = ["${aws_directory_service_directory.my_simplead.dns_ip_addresses}"]
}

resource "aws_vpc_dhcp_options_association" "my_simplead_dns_resolver" {
   vpc_id          =  "${var.vpc_id}"
   dhcp_options_id = "${aws_vpc_dhcp_options.my_simplead_dhcp.id}"
}
