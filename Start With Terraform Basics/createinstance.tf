resource "aws_instance" "MyFirstInstance" {
  count = 3
  ami = "ami-0860c9429baba6ad2"
  instance_type = "t2.micro"
  tags = {
    Name = "ThreeDemoInstances"
  }
}