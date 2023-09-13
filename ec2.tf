resource "aws_instance" "dev" {
  count         = 3
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "terraform-aws"
  tags          = {
    Name = "dev-${count.index}"
  }
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
}

resource "aws_instance" "dev4" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "terraform-aws"
  tags          = {
    Name = "dev-4"
  }
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
  depends_on             = [aws_s3_bucket.dev4]
}

resource "aws_instance" "dev5" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  key_name      = "terraform-aws"
  tags          = {
    Name = "dev-5"
  }
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
}

resource "aws_instance" "dev6" {
  provider      = aws.sa-east-1
  ami           = "ami-0af6e9042ea5a4e3e"
  instance_type = "t2.micro"
  key_name      = "terraform-aws"
  tags          = {
    Name = "dev-6"
  }
  vpc_security_group_ids = [aws_security_group.acesso-ssh-sa-east-1.id]
  depends_on             = [aws_dynamodb_table.drms-dynamodb-table]
}