provider "aws" {
  region = "us-east-1"
}
module "ec2-st" {
  source = "./module-demo/ec2"
}