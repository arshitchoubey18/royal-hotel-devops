variable "aws_region" { default = "ap-south-1" }
variable "project_name" { default = "royal-hotel" }
variable "instance_type" { default = "t3.micro" }
variable "key_name" { default = "royal-hotel-dev-key" }
variable "public_key_path" { default = "~/.ssh/royal-hotel-dev-key.pub" }
variable "dev_username" { default = "devuser" }
variable "allowed_ssh_cidr" { default = "0.0.0.0/0" }
