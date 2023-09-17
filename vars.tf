variable "amis" {
  type = map(string)

  default = {
    "us-east-1" : "ami-053b0d53c279acc90",
    "sa-east-1" : "ami-0af6e9042ea5a4e3e",
  }
}

variable "cidrs_acesso_remoto" {
  type    = list(string)
  default = ["138.94.195.215/32"]
}

variable "key_name" {
  default = "terraform-aws"
}

variable "instance_type" {
  default = "t2.micro"
}