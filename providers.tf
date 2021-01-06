provider "aws" {
  region = "ap-south-1"
  access_key = "AKIA4CGJ3YRNCW5A5QDN"
  secret_key = "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"
}

provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  load_config_file       = false
  version                = "~> 1.11"
}

