resource "aws_instance" "this" {
  ami           = var.ami
  instance_type = var.instance_type

  subnet_id = "subnet-047bdb52c27030057"
}