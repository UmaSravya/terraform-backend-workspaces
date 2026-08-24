output "sg" {
  description = "Security group info"
  value = aws_instance.ec2-sample.security_groups
}