output "public_ips" {
  value = [for instance in aws_instnace.ec2 : instance.public_ip]
}
