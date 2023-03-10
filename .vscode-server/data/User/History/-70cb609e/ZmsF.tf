provider "aws" {
  region = "us-east-1"

}

resource "aws_key_pair" "admin-key3" {
  key_name   = "admin-key3"
  public_key = file("~/.ssh/id_rsa.pub")
}


#sg

resource "aws_security_group" "ssh-sg" {
  name        = "ssh-sg"
  description = "Allow ssh inbound traffic"
  

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "ssh-sg"
  }
}
resource "aws_security_group" "http-sg" {
  name        = "http-sg"
  description = "Allow http inbound traffic"
  

  ingress {
    description = "HTTP from VPC"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]

  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "http-sg"
  }
}
