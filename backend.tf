terraform {
  backend "s3" {
    bucket = "terraform-bucket-eks"
    key = "main"
    region = "us-east-1"
    dynamodb_table = "my-terraform-table"
  }
}