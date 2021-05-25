resource "aws_instance" "MyFirstInstance" {
  ami = "ami-0860c9429baba6ad2"
  instance_type = "t2.micro"
  tags = {
    Name = "DemoInstances"
  }
  security_groups = "${var.Security_Group}"
}