variable "commit" {default = ""}

locals{
  app_name = "alb"
  alb_port = 80
  commit = var.commit
  subnet_id = "subnet-01ad4ba0fb0a6582d"
}