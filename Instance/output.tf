# Web instance outputs
output "vm_basic_platform_web_instance_id" {
  value = oci_core_instance.vm_basic_platform_web.id
}

output "vm_basic_platform_web_instance_public_ip" {
  value = oci_core_instance.vm_basic_platform_web.public_ip
}

output "vm_basic_platform_web_instance_private_ip" {
  value = oci_core_instance.vm_basic_platform_web.private_ip
}

output "basic_platform_web_logs_volume_id" {
  value = oci_core_volume.vol-basic-platform-web-logs.id
}

output "basic_platform_web_logs_volume_attachment_id" {
  value = oci_core_volume_attachment.vola-basic-platform-web-logs.id
}

# App instance outputs
output "vm_basic_platform_app_instance_id" {
  value = oci_core_instance.vm_basic_platform_app.id
}

output "vm_basic_platform_app_instance_public_ip" {
  value = oci_core_instance.vm_basic_platform_app.public_ip
}

output "vm_basic_platform_app_instance_private_ip" {
  value = oci_core_instance.vm_basic_platform_app.private_ip
}

output "basic_platform_app_logs_volume_id" {
  value = oci_core_volume.vol-basic-platform-app-logs.id
}

output "basic_platform_app_logs_volume_attachment_id" {
  value = oci_core_volume_attachment.vola-basic-platform-app-logs.id
}
