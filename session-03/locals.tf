locals {
    ami_id = "ami-03265a0778a880afb"
    public_key = file("${path.module}/rakesh.pub")
    instance = var.instance_type == false ? "t3.micro" : "t2.micro"


}