data "aws_availability_zones" "my_azs" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

resource "aws_instance" "MyEC2VM" {
  ami                    = data.aws_ami.amz_linux2.id
  instance_type          = var.instance_type_map["dev"] #this is for MAP  
  key_name               = var.instance_key_pair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  user_data              = file("user-data-apache.sh")
  for_each               = toset(data.aws_availability_zones.my_azs.names)
  availability_zone      = each.key
  tags = {
    "Name" = "for_each_ec2-demo-${each.key}"
  }
}