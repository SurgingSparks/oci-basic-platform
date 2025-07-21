provider "oci" {}

resource "oci_database_autonomous_database" "oci_database_autonomous_database" {
  compartment_id                          = var.compartment_id
  display_name                            = var.adb_display_name
  db_name                                 = var.adb_db_name
  admin_password                          = var.adb_admin_password

  db_version                              = var.adb_db_version
  db_workload                             = "OLTP"

  compute_model                           = "ECPU"
  compute_count                           = var.adb_compute_count
  data_storage_size_in_tbs                = var.adb_data_storage_size_in_tbs

  is_auto_scaling_enabled                 = false
  is_dedicated                            = false
  is_free_tier                            = var.adb_free_tier
  is_mtls_connection_required            = true
  is_preview_version_with_service_terms_accepted = false

  autonomous_maintenance_schedule_type   = "REGULAR"
  license_model                           = "LICENSE_INCLUDED"
}
