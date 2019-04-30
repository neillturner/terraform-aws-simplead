variable "domain_name" {
  description = "the domain name of the active directory service."
}

variable "short_name" {
  description = "the short name of the active directory service."
}

variable "computer_ou" {
  description = "the org unit of the active directory service."
}

variable "size" {
  default = "Small"
  description = "the size of the SimpleAD active directory service. Small or Large"
}

variable "admin_password" {
  description = "the admin password of the active directory service."
}

variable "vpc_id" {
  description = "the vpc id of the active directory service."
}

variable "subnet_ids" {
  type = "list"
  description = "the subnet ids of the active directory service."
}

variable "iam_prefix" {
  default = "ec2-ssm"
  description = "prefix for naming iam resources."
}
