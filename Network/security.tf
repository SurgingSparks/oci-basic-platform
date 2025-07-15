resource "oci_core_security_list" "public_sec_list" {
  compartment_id = var.compartment_ocid
  vcn_id         = oci_core_vcn.custom_vcn.id
  display_name   = "public-security-list"

  ingress_security_rules {
    protocol = "6" # TCP
    source   = "0.0.0.0/0"
    tcp_options {
      min = 22
      max = 22
    }
    description = "Allow SSH from anywhere"
  }

  ingress_security_rules {
    protocol = "1" # ICMP
    source   = "0.0.0.0/0"
    icmp_options {
      type = 8
      code = 0
    }
    description = "Allow ping (ICMP type 8) from anywhere"
  }

  ingress_security_rules {
    protocol = "6" # TCP
    source   = "0.0.0.0/0"
    tcp_options {
      min = 80
      max = 80
    }
    description = "Allow HTTP"
  }

  ingress_security_rules {
    protocol = "6" # TCP
    source   = "0.0.0.0/0"
    tcp_options {
      min = 443
      max = 443
    }
    description = "Allow HTTPS"
  }

  egress_security_rules {
    protocol = "all"
    destination = "0.0.0.0/0"
    description = "Allow all outbound traffic"
  }
}
