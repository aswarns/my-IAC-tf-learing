#Output with for for loop  with List

output "for_output_list" {
  description = "for loop with List"
  value       = [for instance in aws_instance.MyEC2VM : instance.public_dns]
}

#Output with MAP

output "for_output_map1" {
  description = "For Loop with MAP"
  value       = { for instance in aws_instance.MyEC2VM : instance.id => instance.public_dns }
}


#Output with MAP Advancd
output "for_Loop_with_MAP_Advanced" {
  description = "For Loop with MAP Advanced "
  value       = { for c, instance in aws_instance.MyEC2VM : c => instance.public_dns }

}

/*
#Output with Legacy Splat Operator

output "legacy_splat_instance_public_dns" {
  description = "legacy_splat_instance_public_dns"
  value       = aws_instance.MyEC2VM.*.public_dns
}
*/

#EC2 Instance Public DNS with TOSET
output "latest_splat_instance_public_dns" {
  description = "latest_splat_instance_public_dns"
  #value       = aws_instance.MyEC2VM[*].public_dns
  value = toset([for instance in aws_instance.MyEC2VM : instance.public_ip])

}

#EC2 Instance Public IP with TOSET
output "latest_splat_instance_public_ip" {
  description = "latest_splat_instance_public_dns"
  #value       = aws_instance.MyEC2VM[*].public_ip
  value = toset([for instance in aws_instance.MyEC2VM : instance.public_dns])
}

#EC2 Instance Public DNS with TOMAP
output "latest_splat_instance_public_dns2" {
  value = tomap({ for az, instance in aws_instance.MyEC2VM : az => instance.public_dns })

}