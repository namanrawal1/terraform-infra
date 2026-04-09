provider "aws" {
  region = var.aws_region
}

module "ec2_dev" {
  source = "../../modules/ec2"      # local path — same repo

  name          = "dev-test-ec2"
  ami_id        = var.ami_id
  instance_type = "t3.micro"
  subnet_id     = var.subnet_id
  vpc_id        = var.vpc_id

  tags = {
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}

output "instance_id" {
  value = module.ec2_dev.instance_id
}

output "private_ip" {
  value = module.ec2_dev.private_ip
}