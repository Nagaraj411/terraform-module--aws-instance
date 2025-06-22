resource "aws_instance" "this" { # this is a roboshop name resource
  for_each = toset(var.instances) # This allows you to create multiple instances if needed
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.sg_ids

  tags = {
    # Use the instance name from the list as the tag value
    Name = each.value # Use the instance name from the list as the tag value
}
}