# Define Output Values
# Attribute Reference: EC2 Instance Public IP
output "ec2_instance_public_ip" {
  description = "ec2_instance_public_ip"
  value       = aws_instance.my-ec2-vm.public_ip

}

# Argument Reference: EC2 Instance Private IP
output "aws_instance_private_ip" {
  description = "aws_instance_private_ip"
  value       = aws_instance.my-ec2-vm.private_ip

}

# Argument Reference: Security Groups associated to EC2 Instance
output "aws_instance_sg" {
  description = "aws_instance_SG"
  value       = aws_instance.my-ec2-vm.security_groups
}

# Attribute Reference - Create Public DNS URL with http:// appended

output "aws_publicdns" {
  description = "Public DNS URL appended http:// "
  value       = "http://${aws_instance.my-ec2-vm.public_dns}"

}
