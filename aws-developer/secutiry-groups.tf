resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = var.cidrs_acesso_remoto
  }

  tags = {
    Name = "ssh"
  }
}

resource "aws_security_group" "acesso-http" {
  name        = "acesso-http"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = var.cidrs_acesso_remoto
  }

  tags = {
    Name = "ssh"
  }
}