variable "compartment_ocid" {
  description = "OCID of the compartment to deploy into"
  type        = string
  default     = "ocid1.compartment.oc1..aaaaaaaajzauiwdqmhulsdzco7zmwdeiz54foiecsnteo2ztmip42dhbcaja"
}

variable "region" {
  description = "OCI region"
  type        = string
  default     = "ap-sydney-1"
}

variable "vcn_cidr" {
  description = "CIDR block for the VCN and subnet"
  type        = string
  default     = "10.42.0.0/24"
}
