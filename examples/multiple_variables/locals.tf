locals {
  organization_name  = "dhoppeIT"
  organization_email = "terraform@dhoppe.it"

  workspace_name = "terraform"

  variable_object = {
    "AWS_ACCESS_KEY_ID" = {
      value       = var.aws_access_key_id
      category    = "env"
      description = "The AWS access key to authenticate with Amazon Web Services"
      sensitive   = false
    },
    "AWS_SECRET_ACCESS_KEY" = {
      value       = var.aws_secret_access_key
      category    = "env"
      description = "The AWS secret key to authenticate with Amazon Web Services"
      sensitive   = true
    }
  }
}
