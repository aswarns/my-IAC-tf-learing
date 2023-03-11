resource "aws_instance" "MyEC2VM" {
  ami = data.aws_ami.amz_linux2.id
  instance_type = var.instance_type_map["dev"]#this is for MAP  
  #instance_type          = var.instance_type_list[1]#this is for list 
  key_name               = var.instance_key_pair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  user_data              = file("user-data-apache.sh")
  count                  = 2

  tags = {
    "Name" = "ec2 demo-${count.index}"
  }
}