

resource "aws_key_pair" admin-key" {
  key_name   = "admin-key"
  public_key = file("~/.ssh/id_rsa.pub")
}