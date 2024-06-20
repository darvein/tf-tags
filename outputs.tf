output "all" {
  value = local.tags
}

output "default" {
  value = var.tags
}

output "custom" {
  value = var.custom_tags
}
