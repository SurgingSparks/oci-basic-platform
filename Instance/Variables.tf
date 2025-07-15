variable "compartment_ocid" {
    default = "ocid1.compartment.oc1..aaaaaaaajzauiwdqmhulsdzco7zmwdeiz54foiecsnteo2ztmip42dhbcaja"
}

variable "availability_domain" {
    default = "ap-sydney-1-AD-1"
}

variable "subnet_ocid" {
    default = "ap-sydney-1-AD-1"
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