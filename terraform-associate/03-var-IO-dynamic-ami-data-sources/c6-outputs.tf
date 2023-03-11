output "instance_state" {
  description = "State of the EC2 instance"
  value       = aws_instance.MyEC2VM.instance_state
}

output "instance_pubic_dns" {
  description = "Public DNS of the EC2 instance"
  value       = aws_instance.MyEC2VM.public_dns
}

output "instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.MyEC2VM.public_ip
}

output "instance_security_groups" {
  description = "PSecurity groups of the EC2 instance"
  value       = aws_instance.MyEC2VM.security_groups
  }

output "instance_private_ip" {
  description = "Private IP address of the EC2 instance"
  value       = aws_instance.MyEC2VM.private_ip
}