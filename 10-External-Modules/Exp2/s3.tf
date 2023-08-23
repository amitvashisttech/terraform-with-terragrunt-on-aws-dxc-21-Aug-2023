module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = local.s3_bucket
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}

resource "random_string" "test" {
  length = 10 
  lower = true
  upper = false
  special = false
}

locals {
  s3_bucket = join("-", tolist([var.my_bucket_name, random_string.test.id]))
}

output rand_id {
  value       = random_string.test.id
}


variable "my_bucket_name" {
  type        = string
  default     = "my-s3-backet-av"
  description = "Please provide a uniq bucket name i.e my-s3-backet-av-2023-08-23"
}
