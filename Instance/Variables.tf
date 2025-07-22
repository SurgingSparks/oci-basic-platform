# General instance settings
variable "availability_domain" {
  description = "The AD (Availability Domain) where the instances will be launched."
  type        = string
  default     = "gloC:AP-SYDNEY-1-AD-1"
}

variable "compartment_id" {
  description = "The OCID of the compartment to create resources in."
  type        = string
  default     = "ocid1.compartment.oc1..aaaaaaaajzauiwdqmhulsdzco7zmwdeiz54foiecsnteo2ztmip42dhbcaja"
}

variable "shape" {
  description = "The compute shape of the instance."
  type        = string
  default     = "VM.Standard.E2.1.Micro"
}

variable "subnet_id" {
  description = "The OCID of the subnet to attach the VNIC."
  type        = string
  default     = "ocid1.subnet.oc1.ap-sydney-1.aaaaaaaawkqfehmuvpd7ymvw7canszq2qsck3gilpzfn3kke3ai6nhzt3hja"
}

variable "ssh_authorized_keys" {
  description = "SSH public key to inject into the instance metadata."
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCpyDicYVhqV4OSJbMKG9MuUW5pA2I7mw7yAU3OzxU3QQjaHXVmhPYTXzh+IGFVsXn5tnIkPMC3jtNNwDSTDy54DFNVUSbi6oJISofXnjVL25VIvSg7MQYeAZgfhbzopgF6UZOElKgvaw99QypiBkenSkko0T7jef3UOpzyj0Q1j8L4k3gEL1tFmXsgnGD7/TGcXJRc4J7WwQqUH8/SVlLXS33l7IwPgr4giBCk30d0dnaJEiYDNGk0aB0C9UXBZdK3sjg4syFvjiOpbCUcZVV8jok8cbNO2Hw/4yxfhTEN635u+xmDwWtOfwnqrAazwn5Umuh+L1jUmNYTZsuPyMvN ssh-key-2025-07-15"
}

variable "source_image_id" {
  description = "The OCID of the image to launch the instance from."
  type        = string
  default     = "ocid1.image.oc1.ap-sydney-1.aaaaaaaa7l5t44goumyeu2ahf6cknh5lkfcetwzdagl5tj6e7gsoyjhdt7sa"
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

# VM names & IPs
variable "vm_basic_platform_web_display_name" {
  description = "The display name of the web instance."
  type        = string
  default     = "vm-basic-platform-web"
}

variable "vm_basic_platform_web_private_ip" {
  description = "Static private IP address for the web instance."
  type        = string
  default     = "10.42.0.10"
}

variable "vm_basic_platform_app_display_name" {
  description = "The display name of the app instance."
  type        = string
  default     = "vm-basic-platform-app"
}

variable "vm_basic_platform_app_private_ip" {
  description = "Static private IP address for the app instance."
  type        = string
  default     = "10.42.0.11"
}

# web storage
variable "basic_platform_web_logs_volume_display_name" {
  description = "Display name for the web logs block volume."
  type        = string
  default     = "vol-basic-platform-web-logs"
}

variable "basic_platform_web_logs_volume_size_in_gbs" {
  description = "Size of the web logs block volume in GB."
  type        = number
  default     = 50
}

variable "basic_platform_web_logs_volume_vpus_per_gb" {
  description = "VPUs per GB for the web logs block volume."
  type        = number
  default     = 10
}

variable "basic_platform_web_logs_attachment_device" {
  description = "Device name for the web logs block volume attachment."
  type        = string
  default     = "/dev/oracleoci/oraclevdb"
}

variable "basic_platform_web_logs_attachment_display_name" {
  description = "Display name for the web logs block volume attachment."
  type        = string
  default     = "vola-basic-platform-web-logs"
}

variable "basic_platform_web_logs_is_read_only" {
  description = "Whether the web logs block volume attachment is read-only."
  type        = bool
  default     = false
}

variable "basic_platform_web_logs_is_shareable" {
  description = "Whether the web logs block volume attachment is shareable."
  type        = bool
  default     = false
}

variable "basic_platform_web_logs_is_pv_encryption_in_transit_enabled" {
  description = "Enable encryption in transit for the web logs block volume attachment."
  type        = bool
  default     = true
}

# app storage
variable "basic_platform_app_logs_volume_display_name" {
  description = "Display name for the app logs block volume."
  type        = string
  default     = "vol-basic-platform-app-logs"
}

variable "basic_platform_app_logs_volume_size_in_gbs" {
  description = "Size of the app logs block volume in GB."
  type        = number
  default     = 50
}

variable "basic_platform_app_logs_volume_vpus_per_gb" {
  description = "VPUs per GB for the app logs block volume."
  type        = number
  default     = 10
}

variable "basic_platform_app_logs_attachment_device" {
  description = "Device name for the app logs block volume attachment."
  type        = string
  default     = "/dev/oracleoci/oraclevdc"
}

variable "basic_platform_app_logs_attachment_display_name" {
  description = "Display name for the app logs block volume attachment."
  type        = string
  default     = "vola-basic-platform-app-logs"
}

variable "basic_platform_app_logs_is_read_only" {
  description = "Whether the app logs block volume attachment is read-only."
  type        = bool
  default     = false
}

variable "basic_platform_app_logs_is_shareable" {
  description = "Whether the app logs block volume attachment is shareable."
  type        = bool
  default     = false
}

variable "basic_platform_app_logs_is_pv_encryption_in_transit_enabled" {
  description = "Enable encryption in transit for the app logs block volume attachment."
  type        = bool
  default     = true
}
