terraform {
  cloud {
    organization = "namantf"       # ← replace with your TF Cloud org
    workspaces {
      name = "terraform-infra"
    }
  }
}