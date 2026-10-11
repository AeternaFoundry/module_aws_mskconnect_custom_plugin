variable "mskconnect_custom_plugins" {
  description = <<EOT
Map of mskconnect_custom_plugins, attributes below
Required:
    - content_type
    - name
    - location (block):
        - s3 (required, block):
            - bucket_arn (required)
            - file_key (required)
            - object_version (optional)
Optional:
    - description
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    content_type = string
    name         = string
    description  = optional(string)
    region       = optional(string)
    tags         = optional(map(string))
    tags_all     = optional(map(string))
    location = object({
      s3 = object({
        bucket_arn     = string
        file_key       = string
        object_version = optional(string)
      })
    })
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

