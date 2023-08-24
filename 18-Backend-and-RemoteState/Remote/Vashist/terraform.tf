terraform {
  required_version = ">= 1.4"

  backend "s3" {
    bucket = "my-s3-bucket-jb1-z25c4q3uxs"
    // AmitVashist is the project key here for allowing use to 
    // sort or configure multiple project with project key in single bucket.
    key    = "amitvashist/terraform.tfstate"
    region = "us-east-2"
  }
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">=5.11"
    }
  }

}