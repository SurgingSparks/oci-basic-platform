variable "compartment_ocid" {
    default = ""
}

variable "availability_domain" {
    default = ""
}

variable "subnet_ocid" {
    default = ""
}

variable "instance_shape" {
    default = "VM.Standard.E2.1.Micro"
}

variable "instance_name" {
    default = "basic-platform-vm1"
}

variable "boot_volume_size_in_gbs" {
    default = 50
}

variable "boot_volume_name" {
    default = "basic-platform-vm1-boot"
}

variable "block_volume_size_in_gbs" {
    default = 5
}

variable "block_volume_name" {
    default = "basic-platform-vm1-data"
}