module "tfe_organization" {
  source  = "dhoppeIT/organization/tfe"
  version = "~> 0.3"

  name  = local.organization_name
  email = local.organization_email
}

module "tfe_workspace" {
  source  = "dhoppeIT/workspace/tfe"
  version = "~> 0.2"

  name         = local.workspace_name
  organization = module.tfe_organization.name
}

module "tfe_variable" {
  source  = "dhoppeIT/variable/tfe"
  version = "~> 0.2"

  for_each = local.variable_object

  key                = each.key
  value              = each.value["value"]
  category           = each.value["category"]
  description        = each.value["description"]
  description_suffix = "(managed by Terraform)"
  sensitive          = each.value["sensitive"]
  workspace_id       = module.tfe_workspace.id
}
