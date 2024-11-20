provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-03753afda9b8ba740"
instance_type = "t2.medium"
key_name = "mumbaikey"
vpc_security_group_ids = ["sg-0c8ec77dcaa64b1c5"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["Ansible", "Dev", "Test", "Monitoring"]
}
