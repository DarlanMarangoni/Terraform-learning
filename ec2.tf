resource "aws_instance" "dev" {
  count         = 3
  ami           = var.amis.us-east-1
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = {
    Name = "dev-${count.index}"
  }
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
}

resource "aws_instance" "dev4" {
  ami           = var.amis.us-east-1
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = {
    Name = "dev-4"
  }
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
  depends_on             = [aws_s3_bucket.dev4]
}

resource "aws_instance" "dev5" {
  ami           = var.amis.us-east-1
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = {
    Name = "dev-5"
  }
  vpc_security_group_ids = [aws_security_group.acesso-ssh.id]
}

resource "aws_instance" "dev6" {
  provider      = aws.sa-east-1
  ami           = var.amis.sa-east-1
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = {
    Name = "dev-6"
  }
  vpc_security_group_ids = [aws_security_group.acesso-ssh-sa-east-1.id]
  depends_on             = [aws_dynamodb_table.drms-dynamodb-table]
}

resource "aws_instance" "dev7" {
  provider      = aws.sa-east-1
  ami           = var.amis.sa-east-1
  instance_type = var.instance_type
  key_name      = var.key_name
  tags          = {
    Name = "dev-7"
  }
  vpc_security_group_ids = [aws_security_group.acesso-ssh-sa-east-1.id]
  depends_on             = [aws_dynamodb_table.drms-dynamodb-table]
}