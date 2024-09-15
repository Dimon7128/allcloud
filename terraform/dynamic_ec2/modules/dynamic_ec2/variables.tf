variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 1
}

variable "ami" {
  description = "AMI to use for the EC2 instance"
  type        = string
  default = "ami-05134c8ef96964280"
}

variable "instance_type" {
  description = "Type of EC2 instance to create"
  type        = string
  default = "t2.micro"
}

variable "subnet_ids" {
  description = "List of subnet IDs to deploy instances in"
  type        = list(string)
  default = ["subnet-44da3b3c", "subnet-0d787a46"]
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}
