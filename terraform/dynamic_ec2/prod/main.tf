# Define the provider
provider "aws" {
  region = "eu-west-1" 
}

# data "terraform_remote_state" "backend" {
#   backend = "local"

#   config = {
#     path = "../backend/state.tfstate" # Path to the first Terraform state
#   }
# }

# terraform {
#   backend "s3" {
#     bucket         = data.terraform_remote_state.backend.outputs.s3_bucket_name
#     key            = "terraform/state"
#     region         = "eu-west-1"
#     dynamodb_table = data.terraform_remote_state.backend.outputs.dynamodb_table_name
#     encrypt        = true
#   }
# }

# Module declaration
module "dynamic_ec2" {
  source        = "../modules/dynamic_ec2"  # Adjust the path as per your directory structure
  instance_count = var.instance_count
  ami            = var.ami
  instance_type  = var.instance_type
  subnet_ids     = var.subnet_ids
  tags           = var.tags
}

# Output to verify the results
output "instance_ids" {
  value = module.dynamic_ec2.instance_ids
}
