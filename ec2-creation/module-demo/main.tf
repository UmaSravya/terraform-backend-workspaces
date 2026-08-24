provider "aws" {
    region = "us-east-1"
}
resource "aws_instance" "ec2-sample" {
  ami           = var.my_ami
  instance_type = var.my_instance
  subnet_id = "subnet-047bdb52c27030057"
}

