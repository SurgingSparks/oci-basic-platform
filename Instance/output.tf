output "instance_ocid" {
    value = oci_core_instance.basic_platform_vm1.id
}

output "instance_public_ip" {
    value = oci_core_instance.basic_platform_vm1.public_ip
}

output "block_volume_ocid" {
    value = oci_core_volume.basic_platform_vm1_data.id
}
