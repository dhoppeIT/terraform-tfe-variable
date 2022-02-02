# terraform-tfe-variable

Terraform module to manage the following Terraform Cloud/Enterprise resource:

* tfe_variable

## Graph

<img alt="Graph" src="https://github.com/dhoppeIT/terraform-tfe-variable/blob/main/rover.svg?raw=true" width="100%" height="100%">

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "tfe_organization" {
  source  = "dhoppeIT/organization/tfe"
  version = "~> 0.3"

  name  = "dhoppeIT"
  email = "terraform@dhoppe.it"
}

module "tfe_team" {
  source  = "dhoppeIT/team/tfe"
  version = "~> 0.1"

  name         = "owners"
  organization = module.tfe_organization.name

  organization_membership_id = module.tfe_organization.id
}

module "tfe_workspace" {
  source  = "dhoppeIT/workspace/tfe"
  version = "~> 0.2"

  name         = "terraform"
  organization = module.tfe_organization.name
}

module "tfe_variable" {
  source  = "dhoppeIT/variable/tfe"
  version = "~> 0.2"

  key          = "TFE_TOKEN"
  value        = module.tfe_team.token
  category     = "env"
  description  = "The token used to authenticate with Terraform Cloud/Enterprise"
  sensitive    = true
  workspace_id = module.tfe_workspace.id
}
```

<!--- BEGIN_TF_DOCS --->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_tfe"></a> [tfe](#requirement\_tfe) | ~> 0.26 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | 0.27.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [tfe_variable.default](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/variable) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_category"></a> [category](#input\_category) | Whether this is a Terraform or environment variable | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | Description of the variable | `string` | `null` | no |
| <a name="input_description_suffix"></a> [description\_suffix](#input\_description\_suffix) | Wheter to add a suffix to the description of the variable | `string` | `""` | no |
| <a name="input_hcl"></a> [hcl](#input\_hcl) | Whether to evaluate the value of the variable as a string of HCL code | `bool` | `false` | no |
| <a name="input_key"></a> [key](#input\_key) | Name of the variable | `string` | n/a | yes |
| <a name="input_sensitive"></a> [sensitive](#input\_sensitive) | Whether the value is sensitive | `bool` | `false` | no |
| <a name="input_value"></a> [value](#input\_value) | Value of the variable | `string` | n/a | yes |
| <a name="input_workspace_id"></a> [workspace\_id](#input\_workspace\_id) | ID of the workspace that owns the variable | `string` | n/a | yes |

## Outputs

No outputs.

<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-variable/blob/main/LICENSE) for full details.
