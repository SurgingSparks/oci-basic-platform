resource "oci_core_instance" "basic_platform_vm1" {
  agent_config {
		is_management_disabled = "false"
		is_monitoring_disabled = "false"
		plugins_config {
			desired_state = "DISABLED"
			name = "WebLogic Management Service"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Vulnerability Scanning"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Oracle Java Management Service"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "OS Management Hub Agent"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Management Agent"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Custom Logs Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute RDMA GPU Monitoring"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Run Command"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Compute Instance Monitoring"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute HPC RDMA Auto-Configuration"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Compute HPC RDMA Authentication"
		}
		plugins_config {
			desired_state = "ENABLED"
			name = "Cloud Guard Workload Protection"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Block Volume Management"
		}
		plugins_config {
			desired_state = "DISABLED"
			name = "Bastion"
		}
	}
  	availability_config {
		recovery_action = "RESTORE_INSTANCE"
	}
    availability_domain = var.availability_domain
    compartment_id      = var.compartment_ocid

    create_vnic_details {
        subnet_id        = var.subnet_ocid
        assign_public_ip = "true"
        private_ip = "10.42.0.10"
    }
    display_name = var.instance_name
    shape = var.instance_shape
    source_details {
        boot_volume_vpus_per_gb = var.boot_volume_vpus_per_gb
        boot_volume_size_in_gbs = var.boot_volume_size_in_gbs
        source_type = "image"
        source_id = var.linux_ol96
    }
    is_pv_encryption_in_transit_enabled = "true"
  	launch_volume_attachments {
		device = "/dev/oracleoci/oraclevdb"
		display_name = "basic-platform-vm1-data"
		is_read_only = "false"
		is_shareable = "false"
		launch_create_volume_details {
			compartment_id = "ocid1.compartment.oc1..aaaaaaaajzauiwdqmhulsdzco7zmwdeiz54foiecsnteo2ztmip42dhbcaja"
			display_name = "basic-platform-vm1-data"
			size_in_gbs = "50"
			volume_creation_type = "ATTRIBUTES"
			vpus_per_gb = "10"
		}
		type = "paravirtualized"
	}

    metadata = {
        ssh_authorized_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0wsyPj1mDF65dw9FcQSVP3pkW6xUsxhtWyH3czobkURrGka6ZUb5GEZP9fMZ/JP3iYweUbBxi7uON5WExo3J7BOf+yFTV1/9v6yQg3wOcUsvUbblXEsUL/CT6ehyrVVO4BDCr0g+q0Ir1sYwN5ILhAT3P1NDDOyl8GlgVL0K5+m6F7PYLx5Qs9upFAhrUXpjz7Ooz3Nw3EbDhivZJeMvXkX0BLjUS4SKaIzi9gAje3ZCvMg8C6xuTu1wDWwGOJglbhM8xOsphFLcXtr3pG9QzCMWQIRcx+5X8Y1jRCGmOyWZPcr9sIIf4WRNRtFTrQHmcSyK85o9weMWYOomxuV"
    }
}