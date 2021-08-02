terraform {
  backend "remote" {
    organization = "masterclass"

    workspaces {
      name = "workspace-develop"
    }
  }
}


resource "aws_vpc" "primary_vpc" {
  #name       = "Primary VPC"
  cidr_block = "10.0.0.0/16"
  tags = {
    "Name" = "remote backend"
  }
}