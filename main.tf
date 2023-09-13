provider "aws" {
  version = "~> 4.0.0"
  region = "us-east-1"
}

resource "aws_instance" "dev" {
  count = 3
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
    Name = "dev-${count.index}"
  }
}

resource "aws_security_group" "acesso-ssh" {
  name        = "acesso-ssh"
  description = "Allow SSH inbound traffic"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["138.94.195.220/32"]
  }

  tags = {
    Name = "ssh"
  }
}