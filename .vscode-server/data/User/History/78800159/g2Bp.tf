resource "aws_instance" "myinstance" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t2.micro"

  key_name        = "bastion-key"
  security_groups = ["allow_ssh"]

  tags = {
    Name = "myinstance"
  }
}