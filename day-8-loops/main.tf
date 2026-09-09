resource "aws_instance" "ec2" {
  for_each = tomap({
    server-1 = "t3.micro"
    server-2 = "t3.small"
    server-3 = "c7i-flex.large"
  })
  ami           = "ami-090d68841c2a28756"
  instance_type = each.value
  key_name      = "pem-1"
  tags = {
    Name = each.key
  }
}
