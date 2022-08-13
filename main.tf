# Get oidc token
data "google_service_account_id_token" "oidc" {
  target_audience = var.target_audience
}

# Generate Access Token
data "external" "login" {
  program = [
    "sh", "-c",
    "aws sts assume-role-with-web-identity --duration-seconds ${var.duration_seconds} --role-arn \"${var.role_arn}\" --role-session-name \"${var.session_name}\" --web-identity-token \"${data.google_service_account_id_token.oidc.id_token}\" | jq .Credentials"
  ]
}

locals {
  credentials = data.external.login.result
}
