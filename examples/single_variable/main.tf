module "tfe_organization" {
  source  = "dhoppeIT/organization/tfe"
  version = "~> 0.3"

  name  = local.organization_name
  email = local.organization_email
}

module "tfe_team" {
  source  = "dhoppeIT/team/tfe"
  version = "~> 0.1"

  name         = local.team_name
  organization = module.tfe_organization.name

  organization_membership_id = module.tfe_organization.id
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

  key          = local.variable_key
  value        = module.tfe_team.token
  category     = local.variable_category
  description  = local.variable_description
  sensitive    = local.variable_sensitive
  workspace_id = module.tfe_workspace.id
}
