resource "aws_instance" "web-app" {
  ami                         = "ami-0360c520857e3138f" # Ubuntu
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "aws-login"
  subnet_id                   = data.aws_subnet.Terraform_Public_Subnet1-testing.id
  vpc_security_group_ids      = [data.aws_security_group.allow_all.id]
  associate_public_ip_address = true

  tags = {
    Name = "WebAppInstance"
  }
}

terraform {
  backend "s3" {
    bucket = "base-infra-project-remote-state-16oct2501"
    key    = "current-state.tf"
    region = "us-east-1"
  }
}
