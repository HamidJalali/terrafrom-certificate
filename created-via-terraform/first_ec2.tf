terraform {
  required_providers {
    digitalocean = {
        source = "digitalocean/digitalocean"
        version = "~>2.0"
    }
    github = {
        source = "integrations/github"
        version = "~> 5.0"
    }
  }
}

# provider "aws" {
#   region     = "eu-central-1"
#   #access_key = "TODO"
#   #secret_key = "TODO"
#   #shared_config_files = []
#   #shared_credentials_files = []
# }


provider "digitalocean" {}


# resource "aws_instance" "myec2" {
#     ami = "ami-05852c5f195d545ea"
#     instance_type = "t2.micro"
#     tags = {
#         Name = "myec2-created-via-terraform"
#     }
# }



