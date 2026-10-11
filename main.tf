resource "aws_mskconnect_custom_plugin" "mskconnect_custom_plugins" {
  for_each = var.mskconnect_custom_plugins

  content_type = each.value.content_type
  name         = each.value.name
  description  = each.value.description
  region       = each.value.region
  tags         = each.value.tags
  tags_all     = each.value.tags_all

  location {
    s3 {
      bucket_arn     = each.value.location.s3.bucket_arn
      file_key       = each.value.location.s3.file_key
      object_version = each.value.location.s3.object_version
    }
  }
}

