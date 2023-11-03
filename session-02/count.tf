resource "aws_instance" "count_instance" {
    count = 10
ami = var.ami_id
instance_type = var.instance_names[count.index] == "mongodb" || var.instance_names[count.index] == "cart" ? "t3.micro" : "t2.micro"
tags = {
    Name = var.instance_names[count.index]
}

}
resource "aws_route53_record" "route53" {
    count =10
  zone_id = var.zone_id
  name    = "${var.instance_names[count.index]}.rakeshreddy.online"
  type    = "A"
  ttl     = "1"
  records = [aws_instance.count_instance[count.index].private_ip]
}