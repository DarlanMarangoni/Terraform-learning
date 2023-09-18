resource "aws_instance" "first_instance" {
  tags = {
    Name = "My first instance"
  }
  instance_type = var.instance_type
  ami           = var.ami
  key_name      = var.key_name
  ebs_block_device {
    delete_on_termination = true
    volume_size           = 8
    volume_type           = "gp2"
    device_name           = "/dev/sdb"
  }
  user_data = file("script.sh")

  vpc_security_group_ids = [aws_security_group.acesso-ssh.id, aws_security_group.acesso-http.id]
}