module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name           = "single-instance"
  #instance_count = 2

  ami                    = data.aws_ami.amzlinux.id
  instance_type          = "t2.micro"
  key_name               = "terraform-key"
  monitoring             = true
  vpc_security_group_ids = ["sg-0fe9abfd7e2bb2209"]   # get it from aws console
  subnet_id              = "subnet-0a6a608d79201bc6b" # get it from aws console

  user_data = file("apache-install.sh")


  tags = {
    Name        = "Modules-Demo"
    Terraform   = "true"
    Environment = "dev"
  }
}