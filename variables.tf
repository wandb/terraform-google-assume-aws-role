variable "role_arn" {
  type        = string
  description = "Role that will be assumed by the google service account"
}

variable "session_name" {
  type        = string
  description = "AWS session name"
}

variable "duration_seconds" {
  type    = number
  default = 3600
}

variable "target_audience" {
  type    = string
  default = "accounts.google.com"
}
