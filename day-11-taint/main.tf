resource "aws_instance" "ec2" {
  instance_type          = "t3.micro"
  ami                    = "ami-08188a5a4dfdbd573"
  key_name               = "pem-1"
  vpc_security_group_ids = ["sg-0c3341c45c763e513"]
}
