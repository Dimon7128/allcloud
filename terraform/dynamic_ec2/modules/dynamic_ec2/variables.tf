variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 1
}

variable "ami" {
  description = "AMI to use for the EC2 instance"
  type        = string
  default = "ami-03cc8375791cb8bcf"
}

variable "instance_type" {
  description = "Type of EC2 instance to create"
  type        = string
  default = "t2.micro"
}

variable "subnet_ids" {
  description = "List of subnet IDs to deploy instances in"
  type        = list(string)
  default = ["subnet-0d517fadf11587cf7", "subnet-0f76d6b30b2fa69cf"]
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}
