terraform {
  backend "s3" {
    bucket         = "tfstate-s3-bucket-lab"
    key            = "controler/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "tfstate-lock-table-lab"
  }
}
