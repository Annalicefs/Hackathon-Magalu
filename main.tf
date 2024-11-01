terraform {
    required_providers {
        mgc = {
        source = "MagaluCloud/mgc"
        }
    }
}

provider "mgc" {
  region = "br-se1"
  object_storage = {
    key_pair = {
      key_id = "5ad2253f-6b8b-4edf-871e-a5429994bb0a"
      key_secret = "b2881256-f899-457a-837e-d31618cf1fda"
    }
  }
}

resource "mgc_object_storage_buckets" "my-bucket" {
  provider = mgc
  bucket = "figmaaa"
  enable_versioning = true
  recursive = true # If true, any configuration or operation specified in the resource will be applied not only to the bucket itself but also to all the objects contained within that bucket.
  bucket_is_prefix = false # Indicates whether the bucket name will be used as a prefix for objects.
}

