provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "devops_vm" {
  ami           = "ami-0a261c0e5f51090b1" # Amazon Linux 2 (eu-central-1)
  instance_type = "t2.micro"

  tags = {
    Name = "devops-free-tier-vm"
  }
}
