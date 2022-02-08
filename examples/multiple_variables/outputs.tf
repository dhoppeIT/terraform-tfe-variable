output "variable_id" {
  value       = [for variable in module.tfe_variable : variable.id]
  description = "The ID of the variable"
}
