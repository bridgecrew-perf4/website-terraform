variable "name_postfix" {
  default = "riemervanderzee"
}

variable "default_tags" {
  description = "Map of tags to add to all resources"
  type        = map(string)

  default = {
    Terraform   = "true"
    GitHub-Repo = "riemervdzee/website-terraform"
  }
}
