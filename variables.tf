variable "bigquery_data_transfer_configs" {
  description = <<EOT
Map of bigquery_data_transfer_configs, attributes below
Required:
    - data_source_id
    - display_name
    - params
Optional:
    - data_refresh_window_days
    - deletion_policy
    - destination_dataset_id
    - disabled
    - location
    - notification_pubsub_topic
    - project
    - schedule
    - service_account_name
    - email_preferences (block):
        - enable_failure_email (required)
    - encryption_configuration (block):
        - kms_key_name (required)
    - schedule_options (block):
        - disable_auto_scheduling (optional)
        - end_time (optional)
        - start_time (optional)
    - sensitive_params (block):
        - secret_access_key (optional)
        - secret_access_key_wo (optional)
        - secret_access_key_wo_version (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    data_source_id            = string
    display_name              = string
    params                    = map(string)
    data_refresh_window_days  = optional(number)
    deletion_policy           = optional(string)
    destination_dataset_id    = optional(string)
    disabled                  = optional(bool)
    location                  = optional(string)
    notification_pubsub_topic = optional(string)
    project                   = optional(string)
    schedule                  = optional(string)
    service_account_name      = optional(string)
    email_preferences = optional(object({
      enable_failure_email = bool
    }))
    encryption_configuration = optional(object({
      kms_key_name = string
    }))
    schedule_options = optional(object({
      disable_auto_scheduling = optional(bool)
      end_time                = optional(string)
      start_time              = optional(string)
    }))
    sensitive_params = optional(object({
      secret_access_key            = optional(string)
      secret_access_key_wo         = optional(string)
      secret_access_key_wo_version = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

