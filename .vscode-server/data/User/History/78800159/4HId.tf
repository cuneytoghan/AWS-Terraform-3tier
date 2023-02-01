resource "aws_instance" "first_instance" {
  ami           = "ami-0aa7d40eeae50c9a9"
  instance_type = "t3.micro"

  key_name = "admin-key2"
  #list type
  security_groups = ["allow_ssh"]
  #map type
  root_block_device {
    volume_size = 20
  }
  
  tags = {
    Name = "my-first-instance"
  }
}