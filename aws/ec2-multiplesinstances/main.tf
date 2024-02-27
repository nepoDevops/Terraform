resource "aws_instance" "example" {
  count         = var.instance_count
  ami           = "ami-02d7f7c00d680e290"
  subnet_id = "subnet-06e8e64f7f4b9cb81"
  instance_type = var.instance_type
  tags = {
    Name = "${var.instance_prefix}-${count.index + 1}"
  }
}

