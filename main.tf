resource "tfe_variable" "default" {
  key          = var.key
  value        = var.value
  category     = var.category
  description  = try(trimspace(format("%s %s", var.description, var.description_suffix)), null)
  hcl          = var.hcl
  sensitive    = var.sensitive
  workspace_id = var.workspace_id
}
