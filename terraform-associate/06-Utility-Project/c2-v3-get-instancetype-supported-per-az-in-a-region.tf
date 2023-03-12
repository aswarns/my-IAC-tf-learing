#Datasource
data "aws_availability_zones" "my_azs" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

data "aws_ec2_instance_type_offerings" "my_ins_type" {
  for_each =  toset(data.aws_availability_zones.my_azs.names)
  filter {
    name   = "instance-type"
    values = ["t1.micro"]
  }

  filter {
    name   = "location"
    #values = ["us-east-1a"]
    values = [each.key]
  }

  location_type = "availability-zone"
}

#Output
output "output_v3_1" {
  value ={
    for az, details in data.aws_ec2_instance_type_offerings.my_ins_type: az => details.instance_types
}
}


#Output
output "output_v3_2" {
  value ={
    for az, details in data.aws_ec2_instance_type_offerings.my_ins_type: az => details.instance_types if length(details.instance_types) != 0
    }
}

output "output_v3_3" {
  value =keys({
    for az, details in data.aws_ec2_instance_type_offerings.my_ins_type: az => details.instance_types if length(details.instance_types) != 0
    })
}



output "output_v3_4" {
  value =keys({
    for az, details in data.aws_ec2_instance_type_offerings.my_ins_type: az => details.instance_types if length(details.instance_types) != 0
    })[0]
}