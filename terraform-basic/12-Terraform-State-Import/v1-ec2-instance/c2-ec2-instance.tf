# Create EC2 Instnace Resource
resource "aws_instance" "myec2vm" {
  

   
  ami = "ami-00c39f71452c08778"
  instance_type = "t2.micro"
  #instance_type = "t2.small" # Enabling it as part of Step-06
  availability_zone = "us-east-1d"
  key_name = "terraform-key"
  tags = {
    "Name" = "State-Import-demo"
  }
  
}
