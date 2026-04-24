provider "aws" {
    region = "eu-central-1"
}

resource "aws_eip" "lb" {
  domain = "vpc"
}

output "demo-output" {
  value = aws_eip.lb.public_ip
}
