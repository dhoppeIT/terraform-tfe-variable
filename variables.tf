variable "key" {
  type        = string
  default     = null
  description = "Name of the variable"
}

variable "value" {
  type        = string
  default     = null
  description = "Value of the variable"
}

variable "category" {
  type        = string
  default     = null
  description = "Whether this is a Terraform or environment variable"
}

variable "description" {
  type        = string
  default     = null
  description = "Description of the variable"
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
  default     = null
  description = "ID of the workspace that owns the variable"
}
