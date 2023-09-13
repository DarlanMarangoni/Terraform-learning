provider "aws" {
  version = "~> 4.0.0"
  region = "us-east-1"
}

provider "aws" {
  alias = "sa-east-1"
  version = "~> 4.0.0"
  region = "sa-east-1"
}