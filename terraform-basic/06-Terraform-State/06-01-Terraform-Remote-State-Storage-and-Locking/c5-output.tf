output "ec2_instance_publicip" {
  description = "ec2 instance public ip"
  value       = aws_instance.my-ec2-vm.public_ip
}

output "ec2_public_dns" {
  description = "ec2 public dns"
  value       = aws_instance.my-ec2-vm.public_dns
}