variable "desktops_desktop_pools" {
  description = <<EOT
Map of desktops_desktop_pools, attributes below
Required:
    - are_privileged_users
    - availability_domain
    - compartment_id
    - contact_details
    - display_name
    - is_storage_enabled
    - maximum_size
    - shape_name
    - standby_size
    - storage_backup_policy_id
    - storage_size_in_gbs
    - availability_policy (block):
        - start_schedule (optional, block):
            - cron_expression (required)
            - timezone (required)
        - stop_schedule (optional, block):
            - cron_expression (required)
            - timezone (required)
    - device_policy (block):
        - audio_mode (required)
        - cdm_mode (required)
        - clipboard_mode (required)
        - is_display_enabled (required)
        - is_keyboard_enabled (required)
        - is_pointer_enabled (required)
        - is_printing_enabled (required)
        - is_video_input_enabled (optional)
    - image (block):
        - image_id (required)
        - image_name (required)
        - operating_system (optional)
    - network_configuration (block):
        - security_attributes (optional)
        - subnet_id (required)
        - vcn_id (required)
Optional:
    - are_volumes_preserved
    - boot_volume_size_in_gbs
    - defined_tags
    - description
    - freeform_tags
    - nsg_ids
    - security_attributes
    - time_start_scheduled
    - time_stop_scheduled
    - use_dedicated_vm_host
    - private_access_details (block):
        - nsg_ids (optional)
        - private_ip (optional)
        - security_attributes (optional)
        - subnet_id (required)
    - session_lifecycle_actions (block):
        - disconnect (optional, block):
            - action (required)
            - grace_period_in_minutes (optional)
        - inactivity (optional, block):
            - action (required)
            - grace_period_in_minutes (optional)
    - shape_config (block):
        - baseline_ocpu_utilization (optional)
        - memory_in_gbs (optional)
        - ocpus (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    are_privileged_users     = bool
    availability_domain      = string
    compartment_id           = string
    contact_details          = string
    display_name             = string
    is_storage_enabled       = bool
    maximum_size             = number
    shape_name               = string
    standby_size             = number
    storage_backup_policy_id = string
    storage_size_in_gbs      = number
    are_volumes_preserved    = optional(bool)
    boot_volume_size_in_gbs  = optional(number)
    defined_tags             = optional(map(string))
    description              = optional(string)
    freeform_tags            = optional(map(string))
    nsg_ids                  = optional(set(string))
    security_attributes      = optional(map(string))
    time_start_scheduled     = optional(string)
    time_stop_scheduled      = optional(string)
    use_dedicated_vm_host    = optional(string)
    availability_policy = object({
      start_schedule = optional(object({
        cron_expression = string
        timezone        = string
      }))
      stop_schedule = optional(object({
        cron_expression = string
        timezone        = string
      }))
    })
    device_policy = object({
      audio_mode             = string
      cdm_mode               = string
      clipboard_mode         = string
      is_display_enabled     = bool
      is_keyboard_enabled    = bool
      is_pointer_enabled     = bool
      is_printing_enabled    = bool
      is_video_input_enabled = optional(bool)
    })
    image = object({
      image_id         = string
      image_name       = string
      operating_system = optional(string)
    })
    network_configuration = object({
      security_attributes = optional(map(string))
      subnet_id           = string
      vcn_id              = string
    })
    private_access_details = optional(object({
      nsg_ids             = optional(set(string))
      private_ip          = optional(string)
      security_attributes = optional(map(string))
      subnet_id           = string
    }))
    session_lifecycle_actions = optional(object({
      disconnect = optional(object({
        action                  = string
        grace_period_in_minutes = optional(number)
      }))
      inactivity = optional(object({
        action                  = string
        grace_period_in_minutes = optional(number)
      }))
    }))
    shape_config = optional(object({
      baseline_ocpu_utilization = optional(string)
      memory_in_gbs             = optional(string)
      ocpus                     = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

