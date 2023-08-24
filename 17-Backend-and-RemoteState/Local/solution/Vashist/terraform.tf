terraform {
  required_version = ">= 1.4"

  backend "local" {
    path = "/var/tmp/terraform-local-backend-remote-state/terraform.state"
  }
  

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.11"
    }
  }

}
