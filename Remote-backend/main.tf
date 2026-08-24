provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "abhishek" {
  ami = "ami-0b6d9d3d33ba97d99" # change this
  instance_type = "t3.micro"
  subnet_id = "subnet-047bdb52c27030057" 
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "sravya-s3-demo-xyz" # change this
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}