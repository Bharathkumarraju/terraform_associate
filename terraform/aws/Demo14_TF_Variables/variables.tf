variable "aws_region" {
  description = "Region to deploy EC2 server"
  type        = string
  default     = "ap-southeast-1"
}

variable "port_list" {
  description = "list of ports to open"
  type        = list(any)
  default     = ["80", "443"]
}


variable "instance_size" {
  description = "EC2 instance Size"
  type        = string
  default     = "t3.micro"
}

variable "tags" {
  description = "tags for AWS resources"
  type        = map(any)
  default = {
    Owner       = "BHARATH"
    Environment = "Development"
    Project     = "Bharaths-cloud"
  }
}

variable "key_pair" {
  description = "ssh key pair"
  type        = string
  default     = "bhararthtfcloud"
  sensitive   = true # only works with terraform14
}

variable "password" {
  description = "password of 10 characters"
  type = string
  sensitive = true
  validation {
    condition = length(var.password) == 10
    error_message = "Pasword must be ten characters exactly."
  }
}