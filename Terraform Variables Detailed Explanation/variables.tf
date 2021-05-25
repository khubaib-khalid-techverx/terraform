variable "AWS_ACCESS_KEY" {
  
}

variable "AWS_SECRET_KEY" {
  
}

variable "AWS_REGION" {
  default = "ap-south-1"
}

variable "Security_Group" {
  type = "list"
  default = ["sg-24076","sg-90890","sg-456789"]
}

variable "AMIS" {
  type = map
  default = {
    ap-east-1 = ami-013f864ad81b818d1
    ap-south-1 = ami-03ab5f3b31d5ee063
    ap-southeast-1 = ami-0f9d733050c9f5365
  }
}