provider "aws" {
  profile = "terraform-private"
  region = "ap-northeast-1"
}

resource "aws_instance" "hello-world" {
  ami = "ami-035d55281a86f9439"
  instance_type = "t2.micro"
  tags = {
    Name = "Helloworld"
  }

  user_data = <<EOF
#!/bin/bash
amazon-linux-extras install -y nginx1.12
systemctl start nginx
EOF
}