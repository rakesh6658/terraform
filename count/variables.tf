variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
}

variable "instance_names" {
  type = list
  default = ["MongoDB", "Cart", "Catalogue", "User" , "Redis", "MySQL", "RabbitMQ", "Shipping", "Payment", "Web"]
}

variable "zone_id" {
  default = "Z0391488M5DNTAYOTVFM"
}

variable "domain" {
  default = "joindevops.store"
}