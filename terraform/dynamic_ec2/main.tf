# # Define the provider
# provider "aws" {
#   region = "us-west-2" # Oregon
# }

# # Module declaration
# module "dynamic_ec2" {
#   source        = "./modules/dynamic_ec2"  # Adjust the path as per your directory structure
#   instance_count = var.instance_count
#   ami            = var.ami
#   instance_type  = var.instance_type
#   subnet_ids     = var.subnet_ids
#   tags           = var.tags
# }

# # Output to verify the results
# output "instance_ids" {
#   value = module.dynamic_ec2.instance_ids
# }
