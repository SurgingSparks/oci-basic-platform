resource "oci_core_instance" "basic_platform_vm1" {
    availability_domain = var.availability_domain
    compartment_id      = var.compartment_ocid
    shape               = var.instance_shape
    display_name        = var.instance_name

    create_vnic_details {
        subnet_id        = var.subnet_ocid
        assign_public_ip = true
    }

    source_details {
        boot_volume_size_in_gbs = var.boot_volume_size_in_gbs
        boot_volume_vpus_per_gb = var.boot_volume_vpus_per_gb
        source_type              = "image"
        image_id                 = var.linux_ol95
    }

    metadata = {
        ssh_authorized_keys = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC0wsyPj1mDF65dw9FcQSVP3pkW6xUsxhtWyH3czobkURrGka6ZUb5GEZP9fMZ/JP3iYweUbBxi7uON5WExo3J7BOf+yFTV1/9v6yQg3wOcUsvUbblXEsUL/CT6ehyrVVO4BDCr0g+q0Ir1sYwN5ILhAT3P1NDDOyl8GlgVL0K5+m6F7PYLx5Qs9upFAhrUXpjz7Ooz3Nw3EbDhivZJeMvXkX0BLjUS4SKaIzi9gAje3ZCvMg8C6xuTu1wDWwGOJglbhM8xOsphFLcXtr3pG9QzCMWQIRcx+5X8Y1jRCGmOyWZPcr9sIIf4WRNRtFTrQHmcSyK85o9weMWYOomxuV"
    }
}

resource "oci_core_volume" "basic_platform_vm1_data" {
    availability_domain = var.availability_domain
    compartment_id      = var.compartment_ocid
    display_name        = var.block_volume_name
    size_in_gbs         = var.block_volume_size_in_gbs
}

resource "oci_core_volume_attachment" "basic_platform_vm1_data_attach" {
    attachment_type = "paravirtualized"
    instance_id     = oci_core_instance.basic_platform_vm1.id
    volume_id       = oci_core_volume.basic_platform_vm1_data.id
}