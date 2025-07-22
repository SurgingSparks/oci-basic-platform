#instance
variable "availability_domain" {
  description = "The AD (Availability Domain) where the instance will be launched."
  type        = string
  default     = "gloC:AP-SYDNEY-1-AD-1"
}

variable "compartment_id" {
  description = "The OCID of the compartment to create resources in."
  type        = string
  default     = "ocid1.compartment.oc1..aaaaaaaajzauiwdqmhulsdzco7zmwdeiz54foiecsnteo2ztmip42dhbcaja"
}

variable "display_name" {
  description = "The display name of the instance."
  type        = string
  default     = "basic-platform-vm1"
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

variable "basic_platform_vm1_private_ip" {
  description = "Static private IP address to assign to the primary VNIC."
  type        = string
  default     = "10.42.0.10"
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

#vm2
variable "basic_platform_vm2_display_name" {
  description = "The display name of the VM2 instance."
  type        = string
  default     = "basic-platform-vm2"
}

variable "basic_platform_vm2_private_ip" {
  description = "Static private IP address for VM2."
  type        = string
  default     = "10.42.0.11"
}


# vm1 storage

variable "basic_platform_vm1_logs_volume_display_name" {
  description = "Display name for the logs block volume."
  type        = string
  default     = "vol-basic-platform-vm1-logs"
}

variable "basic_platform_vm1_logs_volume_size_in_gbs" {
  description = "Size of the logs block volume in GB."
  type        = number
  default     = 50
}

variable "basic_platform_vm1_logs_volume_vpus_per_gb" {
  description = "VPUs per GB for the logs block volume."
  type        = number
  default     = 10
}

variable "basic_platform_vm1_logs_attachment_device" {
  description = "Device name for the logs block volume attachment."
  type        = string
  default     = "/dev/oracleoci/oraclevdb"
}

variable "basic_platform_vm1_logs_attachment_display_name" {
  description = "Display name for the logs block volume attachment."
  type        = string
  default     = "vola-basic-platform-vm1-logs"
}

variable "basic_platform_vm1_logs_is_read_only" {
  description = "Whether the logs block volume attachment is read-only."
  type        = bool
  default     = false
}

variable "basic_platform_vm1_logs_is_shareable" {
  description = "Whether the logs block volume attachment is shareable."
  type        = bool
  default     = false
}

variable "basic_platform_vm1_logs_is_pv_encryption_in_transit_enabled" {
  description = "Enable encryption in transit for the logs block volume attachment."
  type        = bool
  default     = true
}

#vm2 storage
variable "basic_platform_vm2_logs_volume_display_name" {
  description = "Display name for the VM2 logs block volume."
  type        = string
  default     = "vol-basic-platform-vm2-logs"
}

variable "basic_platform_vm2_logs_volume_size_in_gbs" {
  description = "Size of the VM2 logs block volume in GB."
  type        = number
  default     = 50
}

variable "basic_platform_vm2_logs_volume_vpus_per_gb" {
  description = "VPUs per GB for the VM2 logs block volume."
  type        = number
  default     = 10
}

variable "basic_platform_vm2_logs_attachment_device" {
  description = "Device name for the VM2 logs block volume attachment."
  type        = string
  default     = "/dev/oracleoci/oraclevdc"
}

variable "basic_platform_vm2_logs_attachment_display_name" {
  description = "Display name for the VM2 logs block volume attachment."
  type        = string
  default     = "vola-basic-platform-vm2-logs"
}

variable "basic_platform_vm2_logs_is_read_only" {
  description = "Whether the VM2 logs block volume attachment is read-only."
  type        = bool
  default     = false
}

variable "basic_platform_vm2_logs_is_shareable" {
  description = "Whether the VM2 logs block volume attachment is shareable."
  type        = bool
  default     = false
}

variable "basic_platform_vm2_logs_is_pv_encryption_in_transit_enabled" {
  description = "Enable encryption in transit for the VM2 logs block volume attachment."
  type        = bool
  default     = true
}
