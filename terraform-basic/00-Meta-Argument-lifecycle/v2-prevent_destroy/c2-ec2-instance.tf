resource "aws_instance" "my-ec2-vm" {
  ami           = "ami-005f9685cb30f234b"
  instance_type = "t2.micro"
  key_name      = "terraform-key"
  availability_zone = "us-east-1a"
  tags = {
    "Name" = "web-1"
  }

/*
  lifecycle {
  prevent_destroy = true 
  }
*/
}