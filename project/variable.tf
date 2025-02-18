variable "instance_names" {
  type    = list(string)
  default = ["mysql", "backend", "frontend"]
}

# variable "common_tags"{
#     type = map
#     default = {
#         Project = "expense"
#         Enviornment = "Dev"
#         Terraform = "true"
#     }
# }

variable "zone_id" {
  default = "Z08329612LLVLHI8AGFPS"
}

variable "domain_name" {
  default = "learningdevops.shop"
}