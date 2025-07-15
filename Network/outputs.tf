output "vcn_id" {
  description = "OCID of the VCN"
  value       = oci_core_vcn.custom_vcn.id
}

output "subnet_id" {
  description = "OCID of the public subnet"
  value       = oci_core_subnet.public_subnet.id
}
