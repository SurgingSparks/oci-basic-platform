provider "oci" {}

resource "oci_core_instance" "vm_basic_platform_web" {
  agent_config {
    is_management_disabled  = var.is_management_disabled
    is_monitoring_disabled  = var.is_monitoring_disabled
    plugins_config {
      desired_state = "DISABLED"
      name          = "WebLogic Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Oracle Java Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "OS Management Hub Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Management Agent"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Custom Logs Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute RDMA GPU Monitoring"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Run Command"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Auto-Configuration"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Authentication"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Cloud Guard Workload Protection"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }

  availability_config {
    recovery_action = "RESTORE_INSTANCE"
  }

  availability_domain                  = var.availability_domain
  compartment_id                       = var.compartment_id
  display_name                         = var.vm_basic_platform_web_display_name
  shape                                = var.shape
  is_pv_encryption_in_transit_enabled = var.is_pv_encryption_in_transit_enabled

  create_vnic_details {
    assign_ipv6ip                = var.assign_ipv6ip
    assign_private_dns_record    = var.assign_private_dns_record
    assign_public_ip             = var.assign_public_ip
    private_ip                   = var.vm_basic_platform_web_private_ip
    subnet_id                    = var.subnet_id
  }

  instance_options {
    are_legacy_imds_endpoints_disabled = var.are_legacy_imds_endpoints_disabled
  }

  metadata = {
    ssh_authorized_keys = var.ssh_authorized_keys
  }

  source_details {
    boot_volume_size_in_gbs   = var.boot_volume_size_in_gbs
    boot_volume_vpus_per_gb   = var.boot_volume_vpus_per_gb
    source_id                 = var.source_image_id
    source_type               = "image"
  }
}

resource "oci_core_instance" "vm_basic_platform_app" {
  agent_config {
    is_management_disabled  = var.is_management_disabled
    is_monitoring_disabled  = var.is_monitoring_disabled
    plugins_config {
      desired_state = "DISABLED"
      name          = "WebLogic Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Vulnerability Scanning"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Oracle Java Management Service"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "OS Management Hub Agent"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Management Agent"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Custom Logs Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute RDMA GPU Monitoring"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Run Command"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Compute Instance Monitoring"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Auto-Configuration"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Compute HPC RDMA Authentication"
    }
    plugins_config {
      desired_state = "ENABLED"
      name          = "Cloud Guard Workload Protection"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Block Volume Management"
    }
    plugins_config {
      desired_state = "DISABLED"
      name          = "Bastion"
    }
  }

  availability_config {
    recovery_action = "RESTORE_INSTANCE"
  }

  availability_domain                  = var.availability_domain
  compartment_id                       = var.compartment_id
  display_name                         = var.vm_basic_platform_app_display_name
  shape                                = var.shape
  is_pv_encryption_in_transit_enabled = var.is_pv_encryption_in_transit_enabled

  create_vnic_details {
    assign_ipv6ip                = var.assign_ipv6ip
    assign_private_dns_record    = var.assign_private_dns_record
    assign_public_ip             = var.assign_public_ip
    private_ip                   = var.vm_basic_platform_app_private_ip
    subnet_id                    = var.subnet_id
  }

  instance_options {
    are_legacy_imds_endpoints_disabled = var.are_legacy_imds_endpoints_disabled
  }

  metadata = {
    ssh_authorized_keys = var.ssh_authorized_keys
  }

  source_details {
    boot_volume_size_in_gbs   = var.boot_volume_size_in_gbs
    boot_volume_vpus_per_gb   = var.boot_volume_vpus_per_gb
    source_id                 = var.source_image_id
    source_type               = "image"
  }
}
