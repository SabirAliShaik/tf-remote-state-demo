data "aws_vpc" "terraform-aws-testing" {
  id = "vpc-0432f7ddf1634e443"
}

data "aws_subnet" "Terraform_Public_Subnet1-testing" {
  id = "subnet-0a6d5a8f8ca1d31df"
}

data "aws_security_group" "allow_all" {
  id = "sg-0fdca514e0b6e1aeb"
}
