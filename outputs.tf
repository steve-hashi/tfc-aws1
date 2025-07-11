output "instance_id" {
  value = aws_instance.example.id
}

output "public_ip" {
  value = aws_instance.example.public_ip
}

output "instance_state" {
  value = aws_instance.example.instance_state
}

output "state" {
  value = aws_ec2_instance_state.example.state
}