variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  
  default = "t2.micro"
}
variable "instances" {
  type = map
  default = {

mongodb = "t3.micro"
catalogue = "t2.micro"
redis = "t2.micro"
user = "t2.micro"
cart = "t3.micro"
mysql = "t2.micro"
rabbitmq = "t2.micro"
shipping = "t2.micro"
payment = "t2.micro"
dispatch = "t2.micro"
web = "t2.micro"

  }
  
}
variable "zone_id" {
  type = string
  default = "Z07861153FFB7P0M0D6G8"
}
variable "zone_name" {
  default = "rakeshreddy.online"
}
variable "sg_names" {
type = list
default = [
{
    
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
    description = "Allow http access"
  


},
{
    description = "Allow https access"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  


},
{
    description = "Allow ssh access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  


}






]

}







