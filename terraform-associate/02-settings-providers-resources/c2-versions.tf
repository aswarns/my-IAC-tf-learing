resource "aws_instance" "MyEC2VM" {
  ami           = "ami-005f9685cb30f234b"
  instance_type = "t2.micro"
  user_data     = file("user-data-apache.sh")
  #user_data     = ("${path.module}/user-data-apache.sh")

  tags = {
    "Name" = "ec2_with_user_data"
  }

}

