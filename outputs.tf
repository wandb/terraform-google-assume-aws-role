output "access_key" {
  value = local.credentials.AccessKeyId
}

output "secret_key" {
  value = local.credentials.SecretAccessKey
}

output "token" {
  value = local.credentials.SessionToken
}