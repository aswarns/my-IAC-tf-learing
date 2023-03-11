resource "aws_instance" "MyEC2VM" {
  ami                    = data.aws_ami.amz_linux2.id
  instance_type          = var.instance_type
  user_data              = file("user-data-apache.sh")
  key_name               = var.instance_key_pair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]

  tags = {
    "Name" = "ec2 demo 2"
  }

}
