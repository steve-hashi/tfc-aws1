resource "aws_instance" "example" {
  ami           = var.ami_id
  instance_type = var.instance_type
 # instance_state = "running"
  tags = {
    Name = "ExampleInstance"
  }

  vpc_security_group_ids = [aws_security_group.instance_sg.id]
}

resource "aws_key_pair" "example" {
  key_name   = "my-key-pair"
  public_key = file("/Users/sspeiche/.ssh/id_ed25519.pub")
}

resource "aws_security_group" "instance_sg" {
  name        = "instance_sg"
  description = "Allow SSH and HTTP traffic"

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
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}