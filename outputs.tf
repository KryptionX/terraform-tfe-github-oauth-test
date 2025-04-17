output "oauth_client_id" {
  description = "The ID of the created OAuth client"
  value       = tfe_oauth_client.github.id
} 