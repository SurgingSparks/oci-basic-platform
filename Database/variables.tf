variable "compartment_id" {
  description = "OCID of the compartment where the Autonomous Database will be created"
  type        = string
  default     = "ocid1.compartment.oc1..aaaaaaaajzauiwdqmhulsdzco7zmwdeiz54foiecsnteo2ztmip42dhbcaja"

}

variable "adb_display_name" {
  description = "Display name of the Autonomous Database"
  type        = string
  default     = "adb-platform-dev"
}

variable "adb_db_name" {
  description = "Database name (max 8 chars, uppercase by convention)"
  type        = string
  default     = "ADBPLTFD"
}

variable "adb_admin_password" {
  description = "ADMIN password for the Autonomous Database"
  type        = string
  sensitive   = true
}

variable "adb_db_version" {
  description = "Database version to use (e.g., 19c or 23ai)"
  type        = string
  default     = "19c"
}

variable "adb_compute_count" {
  description = "Number of CPUs for the Autonomous Database"
  type        = number
  default     = 2
}

variable "adb_data_storage_size_in_tbs" {
  description = "Amount of storage allocated in TBs (min 1 TB for paid instances, but can be lower for free tier)"
  type        = number
  default     = 0.02
}

variable "adb_free_tier" {
  description = "Whether to create the database in free tier mode"
  type        = bool
  default     = true
}
