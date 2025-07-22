resource "oci_core_volume" "vol-basic-platform-web-logs" {
  compartment_id = var.compartment_id
  availability_domain = var.availability_domain
  display_name = var.basic_platform_web_logs_volume_display_name
  size_in_gbs = var.basic_platform_web_logs_volume_size_in_gbs
  vpus_per_gb = var.basic_platform_web_logs_volume_vpus_per_gb
  block_volume_replicas_deletion = true
}

resource "oci_core_volume_attachment" "vola-basic-platform-web-logs" {
  attachment_type = "paravirtualized"
  instance_id = oci_core_instance.basic_platform_web.id
  volume_id = oci_core_volume.vol-basic-platform-web-logs.id
  device = var.basic_platform_web_logs_attachment_device
  display_name = var.basic_platform_web_logs_attachment_display_name
  is_pv_encryption_in_transit_enabled = var.basic_platform_web_logs_is_pv_encryption_in_transit_enabled
  is_read_only = var.basic_platform_web_logs_is_read_only
  is_shareable = var.basic_platform_web_logs_is_shareable
}

resource "oci_core_volume" "vol-basic-platform-app-logs" {
  compartment_id                      = var.compartment_id
  availability_domain                 = var.availability_domain
  display_name                        = var.basic_platform_app_logs_volume_display_name
  size_in_gbs                         = var.basic_platform_app_logs_volume_size_in_gbs
  vpus_per_gb                         = var.basic_platform_app_logs_volume_vpus_per_gb
  block_volume_replicas_deletion     = true
}

resource "oci_core_volume_attachment" "vola-basic-platform-app-logs" {
  attachment_type                           = "paravirtualized"
  instance_id                               = oci_core_instance.basic_platform_app.id
  volume_id                                 = oci_core_volume.vol-basic-platform-app-logs.id
  device                                    = var.basic_platform_app_logs_attachment_device
  display_name                              = var.basic_platform_app_logs_attachment_display_name
  is_pv_encryption_in_transit_enabled      = var.basic_platform_app_logs_is_pv_encryption_in_transit_enabled
  is_read_only                              = var.basic_platform_app_logs_is_read_only
  is_shareable                              = var.basic_platform_app_logs_is_shareable
}
