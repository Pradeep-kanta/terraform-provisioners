resource "aws_instance" "web" {
  ami           = "ami-0f3c7d07486cad139" #devops-practice
  instance_type = "t2.micro"

  tags = {
    Name = "provisioner"
  }

  provisioner "local-exec" {
    command = "echo server IP address ${self.private_ip}"  # self = aws_instance.web
}
}

