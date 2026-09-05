variable "ami_id" {
  type        = string
  description = "AMI ID for the instance"
}

variable "instance_type" {
  type        = string
  default     = "t3.micro"
}

variable "instance_name" {
  type        = string
  description = "Name tag for the instance"
}

variable "key_name" {
  type        = string
  default     = null
}