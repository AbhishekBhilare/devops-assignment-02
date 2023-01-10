variable "region" {
  default     = "ap-southeast-2"
  description = "AWS region"
}

variable "cluster_name" {
  default = "getting-started-eks"
}


variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      rolearn  = "arn:aws:iam::272814864966:role/Terraform-role"
      username = "Terraform-role"
      groups   = ["system:masters"]
    },
  ]
}
