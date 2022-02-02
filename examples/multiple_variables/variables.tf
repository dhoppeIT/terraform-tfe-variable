variable "aws_access_key_id" {
  type        = string
  default     = null
  description = "The AWS access key to authenticate with Amazon Web Services"
}

variable "aws_secret_access_key" {
  type        = string
  default     = null
  description = "The AWS secret key to authenticate with Amazon Web Services"
}

variable "token" {
  type        = string
  default     = null
  description = "The token used to authenticate with Terraform Cloud/Enterprise"
}
