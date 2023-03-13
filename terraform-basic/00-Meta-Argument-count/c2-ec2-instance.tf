resource "aws_instance" "my-ec2-vm" {
  ami           = "ami-005f9685cb30f234b"
  instance_type = "t2.micro"
  key_name      = "terraform-key"
  count         = 3
  user_data     = file("apache-install.sh")

  tags = {
    "Name" = "web-${count.index}"

  }
}
