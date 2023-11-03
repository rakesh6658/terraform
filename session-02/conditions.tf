resource "aws_instance" "conditions" {
    ami = var.ami_id
    instance_type = var.instance_type == "mongodb" ? "t3.micro" : "t2.micro"
}