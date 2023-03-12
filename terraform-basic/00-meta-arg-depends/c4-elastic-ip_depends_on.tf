resource "aws_eip" "my-eip" {
  instance = aws_instance.my-ec2-vm.id
  vpc      = true

  #adding here meta argument depends_on
  depends_on = [aws_internet_gateway.vpc-dev-igw]
}