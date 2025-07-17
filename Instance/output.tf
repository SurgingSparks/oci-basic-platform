output "instance_id" {
  value = oci_core_instance.generated_oci_core_instance.id
}

output "instance_public_ip" {
  value = oci_core_instance.generated_oci_core_instance.public_ip
}

output "instance_private_ip" {
  value = oci_core_instance.generated_oci_core_instance.private_ip
}
