variable "instance_type" {
  description = "The type of EC2 instance to create"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "The AMI ID to use for the EC2 instance"
  default     = "ami-039f75f6e64bffffb"  # Example AMI ID for Amazon Linux 2
}

/* 
variable "key_name" {
  description = "The name of the key pair to use for SSH access"
  type        = string
}

variable "security_group_ids" {
  description = "The security group IDs to associate with the EC2 instance"
  type        = list(string)
} */