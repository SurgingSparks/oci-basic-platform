variable "compartment_ocid" {
  description = "OCID of the compartment to deploy into"
  type        = string
}

variable "vcn_cidr" {
  description = "CIDR block for the VCN and subnet"
  default     = "10.42.0.0/24"
}

variable "region" {
  description = "OCI region"
  type        = string
}
