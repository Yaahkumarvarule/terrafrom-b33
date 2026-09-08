resource "aws_instance" "public_subnet" {
  ami                    = "ami-01a00762f46d584a1"
  instance_type          = "t3.micro"
  key_name               = "pem-1"
  count                  = 2
  vpc_security_group_ids = ["sg-0c3341c45c763e513"]
  tags = {
    Name = "public_instance"
  }
}
