output "desktops_desktop_pools_id" {
  description = "Map of id values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no id are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.id if v.id != null && length(v.id) > 0 }
}
output "desktops_desktop_pools_active_desktops" {
  description = "Map of active_desktops values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no active_desktops are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.active_desktops if v.active_desktops != null }
}
output "desktops_desktop_pools_are_privileged_users" {
  description = "Map of are_privileged_users values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no are_privileged_users are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.are_privileged_users if v.are_privileged_users != null }
}
output "desktops_desktop_pools_are_volumes_preserved" {
  description = "Map of are_volumes_preserved values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no are_volumes_preserved are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.are_volumes_preserved if v.are_volumes_preserved != null }
}
output "desktops_desktop_pools_availability_domain" {
  description = "Map of availability_domain values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no availability_domain are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.availability_domain if v.availability_domain != null && length(v.availability_domain) > 0 }
}
output "desktops_desktop_pools_availability_policy" {
  description = "Map of availability_policy values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no availability_policy are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => one(v.availability_policy) if v.availability_policy != null && length(v.availability_policy) > 0 }
}
output "desktops_desktop_pools_boot_volume_size_in_gbs" {
  description = "Map of boot_volume_size_in_gbs values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no boot_volume_size_in_gbs are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.boot_volume_size_in_gbs if v.boot_volume_size_in_gbs != null }
}
output "desktops_desktop_pools_compartment_id" {
  description = "Map of compartment_id values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no compartment_id are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "desktops_desktop_pools_contact_details" {
  description = "Map of contact_details values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no contact_details are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.contact_details if v.contact_details != null && length(v.contact_details) > 0 }
}
output "desktops_desktop_pools_defined_tags" {
  description = "Map of defined_tags values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no defined_tags are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "desktops_desktop_pools_description" {
  description = "Map of description values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no description are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.description if v.description != null && length(v.description) > 0 }
}
output "desktops_desktop_pools_device_policy" {
  description = "Map of device_policy values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no device_policy are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => one(v.device_policy) if v.device_policy != null && length(v.device_policy) > 0 }
}
output "desktops_desktop_pools_display_name" {
  description = "Map of display_name values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no display_name are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "desktops_desktop_pools_freeform_tags" {
  description = "Map of freeform_tags values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "desktops_desktop_pools_image" {
  description = "Map of image values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no image are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => one(v.image) if v.image != null && length(v.image) > 0 }
}
output "desktops_desktop_pools_is_storage_enabled" {
  description = "Map of is_storage_enabled values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no is_storage_enabled are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.is_storage_enabled if v.is_storage_enabled != null }
}
output "desktops_desktop_pools_maximum_size" {
  description = "Map of maximum_size values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no maximum_size are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.maximum_size if v.maximum_size != null }
}
output "desktops_desktop_pools_network_configuration" {
  description = "Map of network_configuration values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no network_configuration are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => one(v.network_configuration) if v.network_configuration != null && length(v.network_configuration) > 0 }
}
output "desktops_desktop_pools_nsg_ids" {
  description = "Map of nsg_ids values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no nsg_ids are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.nsg_ids if v.nsg_ids != null && length(v.nsg_ids) > 0 }
}
output "desktops_desktop_pools_private_access_details" {
  description = "Map of private_access_details values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no private_access_details are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => one(v.private_access_details) if v.private_access_details != null && length(v.private_access_details) > 0 }
}
output "desktops_desktop_pools_security_attributes" {
  description = "Map of security_attributes values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no security_attributes are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.security_attributes if v.security_attributes != null && length(v.security_attributes) > 0 }
}
output "desktops_desktop_pools_session_lifecycle_actions" {
  description = "Map of session_lifecycle_actions values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no session_lifecycle_actions are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => one(v.session_lifecycle_actions) if v.session_lifecycle_actions != null && length(v.session_lifecycle_actions) > 0 }
}
output "desktops_desktop_pools_shape_config" {
  description = "Map of shape_config values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no shape_config are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => one(v.shape_config) if v.shape_config != null && length(v.shape_config) > 0 }
}
output "desktops_desktop_pools_shape_name" {
  description = "Map of shape_name values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no shape_name are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.shape_name if v.shape_name != null && length(v.shape_name) > 0 }
}
output "desktops_desktop_pools_standby_size" {
  description = "Map of standby_size values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no standby_size are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.standby_size if v.standby_size != null }
}
output "desktops_desktop_pools_state" {
  description = "Map of state values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no state are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.state if v.state != null && length(v.state) > 0 }
}
output "desktops_desktop_pools_storage_backup_policy_id" {
  description = "Map of storage_backup_policy_id values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no storage_backup_policy_id are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.storage_backup_policy_id if v.storage_backup_policy_id != null && length(v.storage_backup_policy_id) > 0 }
}
output "desktops_desktop_pools_storage_size_in_gbs" {
  description = "Map of storage_size_in_gbs values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no storage_size_in_gbs are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.storage_size_in_gbs if v.storage_size_in_gbs != null }
}
output "desktops_desktop_pools_time_created" {
  description = "Map of time_created values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no time_created are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "desktops_desktop_pools_time_start_scheduled" {
  description = "Map of time_start_scheduled values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no time_start_scheduled are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.time_start_scheduled if v.time_start_scheduled != null && length(v.time_start_scheduled) > 0 }
}
output "desktops_desktop_pools_time_stop_scheduled" {
  description = "Map of time_stop_scheduled values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no time_stop_scheduled are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.time_stop_scheduled if v.time_stop_scheduled != null && length(v.time_stop_scheduled) > 0 }
}
output "desktops_desktop_pools_use_dedicated_vm_host" {
  description = "Map of use_dedicated_vm_host values across all desktops_desktop_pools, keyed the same as var.desktops_desktop_pools except keys with no use_dedicated_vm_host are omitted"
  value       = { for k, v in oci_desktops_desktop_pool.desktops_desktop_pools : k => v.use_dedicated_vm_host if v.use_dedicated_vm_host != null && length(v.use_dedicated_vm_host) > 0 }
}

