resource "aws_instance" "terraform" {
  count = length(var.instance_names)
  ami           = data.aws_ami.info.id
  instance_type = var.instance_names[count.index] == "mysql" ? "t3.small" : "t3.micro" 
  tags = {
    Name = var.instance_names[count.index]
  }
}

resource "aws_security_group" "allow_ssh_terraform" {
  # ... other configuration ...
  name = "allow_ssh"
  description = "Allow port number 22 for ssh access"

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
}