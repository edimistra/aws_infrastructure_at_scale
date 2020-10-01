provider "aws" {
  access_key = "AKIAZ37WB3WR3HNKQPLI"
  secret_key = "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"
  region = "us-east-1"
}

resource "aws_instance" "Udacity_T2" {
  count = "4"
  ami = "ami-0c6b1d09930fac512"
  instance_type = "t2.micro"
  subnet_id = "subnet-813ec6e7"
  tags = {
    name = "Udacity T2"
  }
}

resource "aws_instance" "Udacity_M4" {
  count = "2"
  ami = "ami-0c6b1d09930fac512"
  instance_type = "m4.large"
  subnet_id = "subnet-813ec6e7"
  tags = {
    name = "Udacity M4"
  }
}