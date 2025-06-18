output "public_ip" {
  value = aws_instance.this.public_ip # (aws_instance.this) file (this) is a roboshop name resource public IP
}

output "private_ip" {
  value = aws_instance.this.private_ip # (aws_instance.this) file (this) is a roboshop name resource private IP
}

output "instance_id" {
  value = aws_instance.this.id # (aws_instance.this) file (this) is a roboshop name resource instance ID
}