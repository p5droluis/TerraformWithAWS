provider "aws" {
  region     = "us-east-2"
  access_key = var.AWS_PROVIDER_ACCESS_KEY
  secret_key = var.AWS_PROVIDER_SECRET_KEY
}
