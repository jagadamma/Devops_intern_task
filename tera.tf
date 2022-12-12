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
