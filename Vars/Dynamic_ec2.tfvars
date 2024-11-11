nstance_count = 2
ami            = "ami-0c55b159cbfafe1f0"  # Replace with a suitable AMI for your region
instance_type  = "t2.micro"
subnet_ids     = ["subnet-0abcd12345678efgh", "subnet-0abcd12345678ijkl"]  # Replace with your subnet IDs
tags = {
  Environment = "dev"
  Project     = "ec2-terraform-example"
}