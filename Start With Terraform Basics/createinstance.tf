provider "aws" {
    access_key = "AKIAYKY2QLYJHLYADFWR"
    secret_key = "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"
    region = "ap-south-1"
}
resource "aws_instance" "MyFirstInstance" {
  ami = "ami-0860c9429baba6ad2"
  instance_type = "t2.micro"
}