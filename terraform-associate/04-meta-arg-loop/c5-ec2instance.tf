resource "aws_instance" "MyEC2VM" {
  ami = data.aws_ami.amz_linux2
  #instance_type = var.instance_type_list[1] #this is for list
  instance_type = var.instance_type["qa"]
   key_name               = var.instance_key_pair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  count = 2

  tags = {
    "Name" = "ec2 demo-"${count.index}"
  } 
}