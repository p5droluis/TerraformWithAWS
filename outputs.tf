#Show output EC2 Instance
output "ec2" { value = aws_instance.foo }

#Show output EC2 instance private ip 
output "ec2_private_ip" { value = aws_instance.foo.private_ip }