variable "key" {
  type        = string
  description = "Name of the variable"
}

variable "value" {
  type        = string
  description = "Value of the variable"
}

variable "category" {
  type        = string
  description = "Whether this is a Terraform or environment variable"
}

variable "description" {
  type        = string
  default     = null
  description = "Description of the variable"
}

variable "description_suffix" {
  type        = string
  default     = ""
  description = "Wheter to add a suffix to the description of the variable"
}

variable "hcl" {
  type        = bool
  default     = false
  description = "Whether to evaluate the value of the variable as a string of HCL code"
}

variable "sensitive" {
  type        = bool
  default     = false
  description = "Whether the value is sensitive"
}

variable "workspace_id" {
  type        = string
  description = "ID of the workspace that owns the variable"
}
