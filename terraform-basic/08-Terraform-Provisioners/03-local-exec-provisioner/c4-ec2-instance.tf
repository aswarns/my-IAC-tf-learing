# Create EC2 Instance - Amazon2 Linux
resource "aws_instance" "my-ec2-vm" {
  ami           = data.aws_ami.amzlinux.id
  instance_type = var.instance_type
  key_name      = "terraform-key"
  #count = terraform.workspace == "default" ? 1 : 1    
  user_data              = file("apache-install.sh")
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  tags = {
    "Name" = "vm-${terraform.workspace}-0"
  }
  # PLAY WITH /tmp folder in EC2 Instance with File Provisioner

  # Connection Block for Provisioners to connect to EC2 Instance

  connection {
    type        = "ssh"
    user        = "ec2-user"
    password    = ""
    host        = self.public_ip
    private_key = file("private-key/terraform-key.pem")
  }

  # Copies the myapp.conf file to /etc/myapp.conf
  provisioner "local-exec" {
    command     = "echo ${aws_instance.my-ec2-vm.private_ip} >> creation-time-private-ip"
    working_dir = "local-exec-output-files/"
    #on_failure = continue
  }

  provisioner "local-exec" {
    when        = destroy
    command     = "echo Destroy-time provisioner. Instance destroyed at `date` >> destroy-time"
    working_dir = "local-exec-output-files/"

  }


}
