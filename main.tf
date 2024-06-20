locals {
  tags = merge(var.tags, var.custom_tags)
}
