variable "instance_type" {
  default = "t2.micro"
}

variable "ami" {
  default = "ami-0543afe282d1b3393"
}

variable "key_name" {
  default = "terraform-aws"
}

variable "cidrs_acesso_remoto" {
  type    = list(string)
  default = ["0.0.0.0/0"]
}