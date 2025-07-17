output "instance_id" {
  value = oci_core_instance.basic_platform_vm1.id
}
output "instance_public_ip" {
  value = oci_core_instance.basic_platform_vm1.public_ip
}
output "instance_private_ip" {
  value = oci_core_instance.basic_platform_vm1.private_ip
}
output "basic_platform_vm1_logs_volume_id" {
  value = oci_core_volume.vol-basic-platform-vm1-logs.id
}
output "basic_platform_vm1_logs_volume_attachment_id" {
  value = oci_core_volume_attachment.vola-basic-platform-vm1-logs.id
}
