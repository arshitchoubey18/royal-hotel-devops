output "public_ip" { value = aws_instance.dev_vm.public_ip }
output "ssh_command" { value = "ssh -i ~/.ssh/royal-hotel-dev-key ubuntu@${aws_instance.dev_vm.public_ip}" }
