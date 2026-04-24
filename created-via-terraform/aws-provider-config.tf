provider "aws" {
  region     = "eu-central-1"
  #access_key = "TODO"
  #secret_key = "TODO"
  #shared_config_files = []
  #shared_credentials_files = []
}

resource "aws_iam_user" "demouser" {

    name = "demo-user"
  
}