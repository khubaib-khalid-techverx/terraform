provider "aws" {
    access_key = ""
    secret_key = ""
    region = ""
}
resource "aws_instance" "MyFirstInstance" {
  ami = "ami-0becdd21957bf5764"
  instance_type = "t2.micro"
}