variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI ID of the EC2 Instance"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
  description = "Instance type for the EC2 Instance, can be overridden per environment"
}

#mandatory variables to be passed from the command line
variable "sg_ids" {
  type        = list
}

variable "tags" {
  type        = map
}
