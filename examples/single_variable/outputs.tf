output "variable_id" {
  value       = try(module.tfe_variable.id, null)
  description = "The ID of the variable"
}
