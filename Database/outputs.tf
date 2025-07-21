output "autonomous_database_id" {
  description = "OCID of the created Autonomous Database"
  value       = oci_database_autonomous_database.oci_database_autonomous_database.id
}

output "autonomous_database_connection_strings" {
  description = "Connection strings for the Autonomous Database"
  value       = oci_database_autonomous_database.oci_database_autonomous_database.connection_strings
}

output "autonomous_database_db_name" {
  description = "Database name"
  value       = oci_database_autonomous_database.oci_database_autonomous_database.db_name
}

output "autonomous_database_display_name" {
  description = "Display name of the Autonomous Database"
  value       = oci_database_autonomous_database.oci_database_autonomous_database.display_name
}
