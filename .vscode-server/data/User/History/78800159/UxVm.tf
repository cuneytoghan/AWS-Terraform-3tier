resource "aws_instance" "first_instance" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t3.micro"

  key_name = "admin-key"
  #list type
  security_groups = ["allow_ssh"]
 #map type
 root_bloock_device {
    volume_size = 20
 }

  tags = {
    Name = "my-first-instance"
  }
}