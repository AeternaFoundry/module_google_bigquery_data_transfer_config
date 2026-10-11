resource "google_bigquery_data_transfer_config" "bigquery_data_transfer_configs" {
  for_each = var.bigquery_data_transfer_configs

  data_source_id            = each.value.data_source_id
  display_name              = each.value.display_name
  params                    = each.value.params
  data_refresh_window_days  = each.value.data_refresh_window_days
  deletion_policy           = each.value.deletion_policy
  destination_dataset_id    = each.value.destination_dataset_id
  disabled                  = each.value.disabled
  location                  = each.value.location
  notification_pubsub_topic = each.value.notification_pubsub_topic
  project                   = each.value.project
  schedule                  = each.value.schedule
  service_account_name      = each.value.service_account_name

  dynamic "email_preferences" {
    for_each = each.value.email_preferences != null ? [each.value.email_preferences] : []
    content {
      enable_failure_email = email_preferences.value.enable_failure_email
    }
  }

  dynamic "encryption_configuration" {
    for_each = each.value.encryption_configuration != null ? [each.value.encryption_configuration] : []
    content {
      kms_key_name = encryption_configuration.value.kms_key_name
    }
  }

  dynamic "schedule_options" {
    for_each = each.value.schedule_options != null ? [each.value.schedule_options] : []
    content {
      disable_auto_scheduling = schedule_options.value.disable_auto_scheduling
      end_time                = schedule_options.value.end_time
      start_time              = schedule_options.value.start_time
    }
  }

  dynamic "sensitive_params" {
    for_each = each.value.sensitive_params != null ? [each.value.sensitive_params] : []
    content {
      secret_access_key            = sensitive_params.value.secret_access_key
      secret_access_key_wo         = sensitive_params.value.secret_access_key_wo
      secret_access_key_wo_version = sensitive_params.value.secret_access_key_wo_version
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

