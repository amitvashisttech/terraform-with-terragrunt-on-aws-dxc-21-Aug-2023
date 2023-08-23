module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"

  bucket = var.my_bucket_name
  acl    = "private"

  control_object_ownership = true
  object_ownership         = "ObjectWriter"

  versioning = {
    enabled = true
  }
}


variable "my_bucket_name" {
  type        = string
  #default     = ""
  description = "Please provide a uniq bucket name i.e my-s3-backet-av-2023-08-23"
}
