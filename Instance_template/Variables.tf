variable "availability_domain" {
  description = "The AD (Availability Domain) where the instance will be launched."
  type        = string
}

variable "compartment_id" {
  description = "The OCID of the compartment to create resources in."
  type        = string
}

variable "display_name" {
  description = "The display name of the instance."
  type        = string
}

variable "shape" {
  description = "The compute shape of the instance (e.g., VM.Standard.E2.1.Micro)."
  type        = string
}

variable "subnet_id" {
  description = "The OCID of the subnet to attach the VNIC."
  type        = string
}

variable "private_ip" {
  description = "Static private IP address to assign to the primary VNIC."
  type        = string
}

variable "ssh_authorized_keys" {
  description = "SSH public key to inject into the instance metadata."
  type        = string
}

variable "source_image_id" {
  description = "The OCID of the image to launch the instance from."
  type        = string
}

variable "boot_volume_size_in_gbs" {
  description = "Boot volume size in GB."
  type        = number
  default     = 50
}

variable "boot_volume_vpus_per_gb" {
  description = "Boot volume VPUs per GB (performance level)."
  type        = number
  default     = 10
}

variable "assign_ipv6ip" {
  description = "Whether to assign an IPv6 address to the VNIC."
  type        = bool
  default     = false
}

variable "assign_private_dns_record" {
  description = "Whether to create a private DNS record for the VNIC."
  type        = bool
  default     = true
}

variable "assign_public_ip" {
  description = "Whether to assign a public IP to the VNIC."
  type        = bool
  default     = true
}

variable "is_management_disabled" {
  description = "Disable management agent on the instance."
  type        = bool
  default     = false
}

variable "is_monitoring_disabled" {
  description = "Disable monitoring agent on the instance."
  type        = bool
  default     = false
}

variable "is_pv_encryption_in_transit_enabled" {
  description = "Enable encryption in transit for paravirtualized volumes."
  type        = bool
  default     = true
}

variable "are_legacy_imds_endpoints_disabled" {
  description = "Disable legacy IMDS endpoints for instance metadata."
  type        = bool
  default     = false
}
