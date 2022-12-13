provider "aws" {
  region  = "us-west-2"
  access_key = "AKIAQMVASEQFZV6YMC5T"
  secret_key = "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"
}

resource "aws_instance" "myserver" {
  ami="ami-830c94e3"
  instance_type="t2.micro"
  count="1"

  tags = {
    Name = "server1"
  }
}
