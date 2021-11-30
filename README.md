# terraform-tfe-variable

Terraform module to manage the Terraform Cloud/Enterprise resource
(tfe_variable).

## Graph

![Graph](https://github.com/dhoppeIT/terraform-tfe-variable/blob/main/rover.png)

## Usage

Copy and paste into your Terraform configuration, insert the variables and run ```terraform init```:

```hcl
module "tfe-variable" {
module "tfe-organization" {
  source = "dhoppeIT/organization/tfe"

  name  = "dhoppeIT"
  email = "terraform@dhoppe.it"
}

module "tfe-workspace" {
  source = "dhoppeIT/workspace/tfe"

  name         = "terraform"
  organization = module.tfe-organization.name
}

module "tfe-variable" {
  source = "dhoppeIT/variable/tfe"

  key          = "TFE_TOKEN"
  value        = module.tfe-oauth_client.oauth_token_id
  category     = "env"
  description  = "The token used to authenticate with Terraform Cloud/Enterprise"
  sensitive    = true
  workspace_id = module.tfe-workspace.id
}
```

<!--- BEGIN_TF_DOCS --->
<!--- END_TF_DOCS --->

## Authors

Created and maintained by [Dennis Hoppe](https://github.com/dhoppeIT/).

## License

Apache 2 licensed. See [LICENSE](https://github.com/dhoppeIT/terraform-tfe-variable/blob/main/LICENSE) for full details.
