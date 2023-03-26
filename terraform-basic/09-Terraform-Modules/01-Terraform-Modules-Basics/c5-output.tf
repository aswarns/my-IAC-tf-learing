output "ec2_instance_public_ip" {
  description = "Public IPs of ec2 instances"
  value       = module.ec2_instance.*.public_ip
}

output "ec2_instance_public_dns" {
  description = "Public DNS of ec2 vms"
  value       = module.ec2_instance.*.public_dns
}