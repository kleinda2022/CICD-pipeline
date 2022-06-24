resource "aws_security_group" "demo-sg1" {
  name        = "demo-sg1"
  description = "allow ssh and http traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }
}

 connection {
      type = "ssh"
      user = "ubuntu"
      host = self.public_ip
      port = 22
      private_key = "${file("/Users/kysse/.ssh/id_rsa")}"
    }
  }
