variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "AMI ID of the EC2 Instance"
}
  
variable "instance_type" {
  type        = string
  default     = "t3.micro"
  description = "Instance type for the EC2 Instance, can be overridden per environment"

  validation {                                                                                            # Validate the instance type
    condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)                    # List of valid instance types
    error_message = "Instance type must be a valid AWS instance type are : t3.micro, t3.small, t3.medium" # Error message if validation fails
  }
}

#mandatory variables to be passed from the command line
variable "sg_ids" {
  type = list # no of VPC security groups 1,2,3 to be attached to the instance
}

variable "tags" {
  type = map # Key-value pairs for tagging the instance
}

variable "instances" {
  description = "list of instance name created"
  type = list(string) # List of instance IDs to create multiple instances if needed
}