resource "aws_instance" "conditions" {
  ami = "ami-03cb1380eec7cc118"
  instance_type = var.env == "PROD" ? "t2.medium" : "t2.micro"
  tags = var.tags
}
