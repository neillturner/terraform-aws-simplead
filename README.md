# terraform-aws-simplead
Create a simplead Active Directory AWS Directory Service

# Overview

Creates AWS SimpleAD Directory Service

## Requirements

This module requires Terraform version `0.10.x` or newer.

## Dependencies

This module depends on a correctly configured [AWS Provider](https://www.terraform.io/docs/providers/aws/index.html) in your Terraform codebase.

## Usage

```
module "ad" {
    source = "neillturner/simplead/aws"
    version = "0.1.0"
    domain_name     = "aws.example.com"
    short_name      = "corp"
    size            = "Small"
    admin_password  = "secret"
    vpc_id          = vpc-xxxxxx"
    subnet_ids      = "subnet-yyyyyyyyy"
  }
```
## variables
