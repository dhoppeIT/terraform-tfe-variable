resource "tfe_variable" "default" {
  key          = var.key
  value        = var.value
  category     = var.category
  description  = var.description
  hcl          = var.hcl
  sensitive    = var.sensitive
  workspace_id = var.workspace_id
}
