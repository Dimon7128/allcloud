resource "aws_instance" "ec2" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id     = element(var.subnet_ids, count.index)

  tags = merge(
    var.tags,
    {
      "Name" = "EC2Instance-${count.index+1}"
    }
  )
}
