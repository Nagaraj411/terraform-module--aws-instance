# 🚀AWS EC2 Instance
You can create an EC2 instance in joindevops using this module.

## ⚙️ Inputs

* `ami_id` (Optional) - AMI ID to be used by the instance.
  - Default: devops-practice ("AMI_ID")

* `instance_type` (Optional) - Instance type to be used.
  - Valid values: `t3.micro`, `t3.small`, `t3.medium`
  - Default: `t3.micro`

* `sg_ids` (Required) - A list of Security Group IDs to attach to the instance.

* `tags` (Required) - A map of tags to be associated with the instance.

## ⚙️ Outputs

* `public_ip` - Public IP of the created instance
* `private_ip` - Private IP of the created instance
* `instance_id` - Instance ID of the created instance
