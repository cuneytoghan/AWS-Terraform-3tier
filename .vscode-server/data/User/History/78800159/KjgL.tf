resource "aws_instance" "first_instance" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t3.micro"

  key_name = "admin-key"
  #list type
  security_groups = ["ssh-sg", "http-sg"]
 #map type

  tags = {
    Name = "my-first-instance"
  }
}