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

#Output with for loop
output "latest_splat_instance_public_dns" {
  description = "latest_splat_instance_public_dns"
  value       = aws_instance.MyEC2VM[*].public_dns
}