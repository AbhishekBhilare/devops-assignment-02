variable "region" {
  default     = "us-east-1"
  description = "AWS region"
}

variable "cluster_name" {
  default = "getting-started-eks"
}

# variable "map_accounts" {
#   description = "Additional AWS account numbers to add to the aws-auth configmap."
#   type        = list(string)

#   default = [
#     "777777777777",
#     "888888888888",
#   ]
# }

variable "map_roles" {
  description = "Additional IAM roles to add to the aws-auth configmap."
  type = list(object({
    rolearn  = string
    username = string
    groups   = list(string)
    
  }))

  default = [
    {
      rolearn  = "arn:aws:iam::272814864966:role/eksClusterRole"
      username = "eksClusterRole"
      groups   = ["system:masters"]
     
    },
  ]
}

variable "map_users" {
  description = "Additional IAM users to add to the aws-auth configmap."
  type = list(object({
    userarn  = string
    username = string
    groups   = list(string)
  }))

  default = [
    {
      userarn  = "arn:aws:iam::272814864966:user/Abhishek-eks-terraform"
      username = "Abhishek-eks-terraform"
      groups   = ["system:masters"]
    },
  ]
}
