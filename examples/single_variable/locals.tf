locals {
  organization_name  = "dhoppeIT"
  organization_email = "terraform@dhoppe.it"

  team_name = "owners"

  workspace_name = "terraform"

  variable_key         = "TFE_TOKEN"
  variable_category    = "env"
  variable_description = "The token used to authenticate with Terraform Cloud/Enterprise"
  variable_sensitive   = true
}
