provider "aws" {
    region = "eu-central-1"
}


resource "aws_eip" "lb" {
  #instance = "i-0ea07bade60f0ef1c" - Optional
  domain = "vpc"
}