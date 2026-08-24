
terraform {
  backend "s3" {
    bucket         = "sravya-s3-demo-xyz"
    key            = "./terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock"
  }
}
