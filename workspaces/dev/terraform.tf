terraform {
  cloud {
    organization = "your-org-name"       # ← replace with your TF Cloud org
    workspaces {
      name = "ec2-dev"
    }
  }
}