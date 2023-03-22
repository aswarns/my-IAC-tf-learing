# Create EC2 Instance
resource "aws_instance" "my-ec2-vm" {
  ami           = data.aws_ami.amzlinux.id
  instance_type = var.instance_type
  key_name      = "terraform-key"
  count         = terraform.workspace == "default" ? 2 : 1
  # "default" ? 2 : 1-- means if default workspace than count is 2 for any other it would be 1  
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  user_data              = file("apache-install.sh")

  tags = {
    "Name" = "myec2vm-${terraform.workspace}-${count.index}"
  }
}
