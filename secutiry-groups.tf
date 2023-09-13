resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["138.94.195.220/32"]
  }

  tags = {
    Name = "ssh"
  }
}

resource "aws_security_group" "acesso-ssh-sa-east-1" {
  provider    = aws.sa-east-1
  name        = "acesso-ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["138.94.195.220/32"]
  }

  tags = {
    Name = "ssh"
  }
}