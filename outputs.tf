output "bigquery_data_transfer_configs_id" {
  description = "Map of id values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no id are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigquery_data_transfer_configs_data_refresh_window_days" {
  description = "Map of data_refresh_window_days values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no data_refresh_window_days are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.data_refresh_window_days if v.data_refresh_window_days != null }
}
output "bigquery_data_transfer_configs_data_source_id" {
  description = "Map of data_source_id values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no data_source_id are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.data_source_id if v.data_source_id != null && length(v.data_source_id) > 0 }
}
output "bigquery_data_transfer_configs_deletion_policy" {
  description = "Map of deletion_policy values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigquery_data_transfer_configs_destination_dataset_id" {
  description = "Map of destination_dataset_id values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no destination_dataset_id are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.destination_dataset_id if v.destination_dataset_id != null && length(v.destination_dataset_id) > 0 }
}
output "bigquery_data_transfer_configs_disabled" {
  description = "Map of disabled values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no disabled are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.disabled if v.disabled != null }
}
output "bigquery_data_transfer_configs_display_name" {
  description = "Map of display_name values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no display_name are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "bigquery_data_transfer_configs_email_preferences" {
  description = "Map of email_preferences values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no email_preferences are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => one(v.email_preferences) if v.email_preferences != null && length(v.email_preferences) > 0 }
}
output "bigquery_data_transfer_configs_encryption_configuration" {
  description = "Map of encryption_configuration values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no encryption_configuration are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => one(v.encryption_configuration) if v.encryption_configuration != null && length(v.encryption_configuration) > 0 }
}
output "bigquery_data_transfer_configs_location" {
  description = "Map of location values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no location are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.location if v.location != null && length(v.location) > 0 }
}
output "bigquery_data_transfer_configs_name" {
  description = "Map of name values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no name are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.name if v.name != null && length(v.name) > 0 }
}
output "bigquery_data_transfer_configs_notification_pubsub_topic" {
  description = "Map of notification_pubsub_topic values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no notification_pubsub_topic are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.notification_pubsub_topic if v.notification_pubsub_topic != null && length(v.notification_pubsub_topic) > 0 }
}
output "bigquery_data_transfer_configs_params" {
  description = "Map of params values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no params are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.params if v.params != null && length(v.params) > 0 }
}
output "bigquery_data_transfer_configs_project" {
  description = "Map of project values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no project are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigquery_data_transfer_configs_schedule" {
  description = "Map of schedule values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no schedule are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.schedule if v.schedule != null && length(v.schedule) > 0 }
}
output "bigquery_data_transfer_configs_schedule_options" {
  description = "Map of schedule_options values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no schedule_options are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => one(v.schedule_options) if v.schedule_options != null && length(v.schedule_options) > 0 }
}
output "bigquery_data_transfer_configs_sensitive_params" {
  description = "Map of sensitive_params values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no sensitive_params are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => one(v.sensitive_params) if v.sensitive_params != null && length(v.sensitive_params) > 0 }
  sensitive   = true
}
output "bigquery_data_transfer_configs_service_account_name" {
  description = "Map of service_account_name values across all bigquery_data_transfer_configs, keyed the same as var.bigquery_data_transfer_configs except keys with no service_account_name are omitted"
  value       = { for k, v in google_bigquery_data_transfer_config.bigquery_data_transfer_configs : k => v.service_account_name if v.service_account_name != null && length(v.service_account_name) > 0 }
}

