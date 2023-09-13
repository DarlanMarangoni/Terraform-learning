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
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
}

resource "aws_instance" "dev4" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
    Name = "dev-4"
  }
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
  depends_on = [aws_s3_bucket.dev4]
}

resource "aws_instance" "dev5" {
  ami = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name = "terraform-aws"
  tags = {
    Name = "dev-5"
  }
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
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

resource "aws_s3_bucket" "dev4" {
  bucket = "drms-dev4-bucket"

  tags = {
    Name        = "drms-dev4-bucket"
  }
}