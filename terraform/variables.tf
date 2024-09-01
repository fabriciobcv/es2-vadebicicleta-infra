variable "commit" {default = ""}

locals{
  app_name = "alb"
  alb_port = 80
  commit = var.commit
  subnet_id1 = "subnet-01ad4ba0fb0a6582d"
  subnet_id2 = "subnet-0a98f796d4be71c54"
}