provider "aws" {
  region = "us-east-1"

}

resource "aws_key_pair" "admin-key2" {
  key_name   = "admin-key2"
  public_key = file("~/.ssh/id_rsa.pub")
}