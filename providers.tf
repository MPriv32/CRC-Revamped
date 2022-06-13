provider "aws" {
  shared_config_files      = ["$HOME/.aws/conf"]
  shared_credentials_files = ["$HOME/.aws/credentials"]
  profile                 = "default"
  region                  = var.aws_region
}