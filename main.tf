resource "oci_desktops_desktop_pool" "desktops_desktop_pools" {
  for_each = var.desktops_desktop_pools

  are_privileged_users     = each.value.are_privileged_users
  availability_domain      = each.value.availability_domain
  compartment_id           = each.value.compartment_id
  contact_details          = each.value.contact_details
  display_name             = each.value.display_name
  is_storage_enabled       = each.value.is_storage_enabled
  maximum_size             = each.value.maximum_size
  shape_name               = each.value.shape_name
  standby_size             = each.value.standby_size
  storage_backup_policy_id = each.value.storage_backup_policy_id
  storage_size_in_gbs      = each.value.storage_size_in_gbs
  are_volumes_preserved    = each.value.are_volumes_preserved
  boot_volume_size_in_gbs  = each.value.boot_volume_size_in_gbs
  defined_tags             = each.value.defined_tags
  description              = each.value.description
  freeform_tags            = each.value.freeform_tags
  nsg_ids                  = each.value.nsg_ids
  security_attributes      = each.value.security_attributes
  time_start_scheduled     = each.value.time_start_scheduled
  time_stop_scheduled      = each.value.time_stop_scheduled
  use_dedicated_vm_host    = each.value.use_dedicated_vm_host

  availability_policy {
    dynamic "start_schedule" {
      for_each = each.value.availability_policy.start_schedule != null ? [each.value.availability_policy.start_schedule] : []
      content {
        cron_expression = start_schedule.value.cron_expression
        timezone        = start_schedule.value.timezone
      }
    }
    dynamic "stop_schedule" {
      for_each = each.value.availability_policy.stop_schedule != null ? [each.value.availability_policy.stop_schedule] : []
      content {
        cron_expression = stop_schedule.value.cron_expression
        timezone        = stop_schedule.value.timezone
      }
    }
  }

  device_policy {
    audio_mode             = each.value.device_policy.audio_mode
    cdm_mode               = each.value.device_policy.cdm_mode
    clipboard_mode         = each.value.device_policy.clipboard_mode
    is_display_enabled     = each.value.device_policy.is_display_enabled
    is_keyboard_enabled    = each.value.device_policy.is_keyboard_enabled
    is_pointer_enabled     = each.value.device_policy.is_pointer_enabled
    is_printing_enabled    = each.value.device_policy.is_printing_enabled
    is_video_input_enabled = each.value.device_policy.is_video_input_enabled
  }

  image {
    image_id         = each.value.image.image_id
    image_name       = each.value.image.image_name
    operating_system = each.value.image.operating_system
  }

  network_configuration {
    security_attributes = each.value.network_configuration.security_attributes
    subnet_id           = each.value.network_configuration.subnet_id
    vcn_id              = each.value.network_configuration.vcn_id
  }

  dynamic "private_access_details" {
    for_each = each.value.private_access_details != null ? [each.value.private_access_details] : []
    content {
      nsg_ids             = private_access_details.value.nsg_ids
      private_ip          = private_access_details.value.private_ip
      security_attributes = private_access_details.value.security_attributes
      subnet_id           = private_access_details.value.subnet_id
    }
  }

  dynamic "session_lifecycle_actions" {
    for_each = each.value.session_lifecycle_actions != null ? [each.value.session_lifecycle_actions] : []
    content {
      dynamic "disconnect" {
        for_each = session_lifecycle_actions.value.disconnect != null ? [session_lifecycle_actions.value.disconnect] : []
        content {
          action                  = disconnect.value.action
          grace_period_in_minutes = disconnect.value.grace_period_in_minutes
        }
      }
      dynamic "inactivity" {
        for_each = session_lifecycle_actions.value.inactivity != null ? [session_lifecycle_actions.value.inactivity] : []
        content {
          action                  = inactivity.value.action
          grace_period_in_minutes = inactivity.value.grace_period_in_minutes
        }
      }
    }
  }

  dynamic "shape_config" {
    for_each = each.value.shape_config != null ? [each.value.shape_config] : []
    content {
      baseline_ocpu_utilization = shape_config.value.baseline_ocpu_utilization
      memory_in_gbs             = shape_config.value.memory_in_gbs
      ocpus                     = shape_config.value.ocpus
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

