variable "ami_id" {
  type = string
  default = "ami-03265a0778a880afb"
}

variable "instance_type" {
  
  default = false
}
variable "sg_name" {
  
  default = "allow protocols"
}
variable "sg_cidr" {
  type = list
  default = ["0.0.0.0/0"]
}
variable "instance_names" {
  type = list 
  default = ["mongodb","catalogue","redis","user","cart","mysql","rabbitmq","shipping","payment","dispatch","web"]
}
variable "zone_id" {
  default = "Z07861153FFB7P0M0D6G8"
}






