provider "aws" {

     region = "us-east-1"
}
terraform {
  backend "s3" {
    bucket = "roboshop-example"
    key    = "LockID"
    dynamodb_table = "rakesh"
    aws_region = "us-east-1"
  }
}
