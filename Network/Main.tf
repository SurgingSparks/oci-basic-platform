provider "oci" {
  region = var.region
}

resource "oci_core_vcn" "custom_vcn" {
  cidr_block     = var.vcn_cidr
  compartment_id = var.compartment_ocid
  display_name   = "basic-platform-vcn"
  dns_label      = "basicvcn"
}

resource "oci_core_internet_gateway" "igw" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.custom_vcn.id
  display_name   = "internet-gateway"
  enabled        = true
}

resource "oci_core_route_table" "public_rt" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.custom_vcn.id
  display_name   = "public-route-table"

  route_rules {
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_internet_gateway.igw.id
  }
}

resource "oci_core_subnet" "public_subnet" {
  compartment_id      = var.compartment_ocid
  vcn_id              = oci_core_vcn.custom_vcn.id
  cidr_block          = var.vcn_cidr
  display_name        = "public-subnet"
  route_table_id      = oci_core_route_table.public_rt.id
  dns_label           = "public"
  prohibit_public_ip_on_vnic = false
}
