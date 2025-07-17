provider "oci" {}

resource "oci_core_instance" "generated_oci_core_instance" {
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
	availability_domain = "gloC:AP-SYDNEY-1-AD-1"
	compartment_id = "ocid1.compartment.oc1..aaaaaaaajzauiwdqmhulsdzco7zmwdeiz54foiecsnteo2ztmip42dhbcaja"
	create_vnic_details {
		assign_ipv6ip = "false"
		assign_private_dns_record = "true"
		assign_public_ip = "true"
		private_ip = "10.42.0.10"
		subnet_id = "ocid1.subnet.oc1.ap-sydney-1.aaaaaaaawkqfehmuvpd7ymvw7canszq2qsck3gilpzfn3kke3ai6nhzt3hja"
	}
	display_name = "basic-plateform-vm1"
	instance_options {
		are_legacy_imds_endpoints_disabled = "false"
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
		"ssh_authorized_keys" = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCpyDicYVhqV4OSJbMKG9MuUW5pA2I7mw7yAU3OzxU3QQjaHXVmhPYTXzh+IGFVsXn5tnIkPMC3jtNNwDSTDy54DFNVUSbi6oJISofXnjVL25VIvSg7MQYeAZgfhbzopgF6UZOElKgvaw99QypiBkenSkko0T7jef3UOpzyj0Q1j8L4k3gEL1tFmXsgnGD7/TGcXJRc4J7WwQqUH8/SVlLXS33l7IwPgr4giBCk30d0dnaJEiYDNGk0aB0C9UXBZdK3sjg4syFvjiOpbCUcZVV8jok8cbNO2Hw/4yxfhTEN635u+xmDwWtOfwnqrAazwn5Umuh+L1jUmNYTZsuPyMvN ssh-key-2025-07-15"
	}
	shape = "VM.Standard.E2.1.Micro"
	source_details {
		boot_volume_size_in_gbs = "50"
		boot_volume_vpus_per_gb = "10"
		source_id = "ocid1.image.oc1.ap-sydney-1.aaaaaaaa7l5t44goumyeu2ahf6cknh5lkfcetwzdagl5tj6e7gsoyjhdt7sa"
		source_type = "image"
	}
}
