# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Network
# Custom DHCP - tfvars
# Allowed Values:
# vcn_id can be the ocid or the key of vcns (map)
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network--Prod" where "Network" is the parent of "Prod" compartment
# Sample import command for Custom DHCP:
# terraform import "module.custom-dhcps[\"<<custom_dhcp terraform variable name>>\"].oci_core_dhcp_options.custom_dhcp_option" <<custom dhcp ocid>>
############################
custom_dhcps = {
        fwl-vcn_dhcp-internal = {
            compartment_id           = "Network"
            server_type              = "VcnLocalPlusInternet"
            display_name     = "dhcp-internal"
            vcn_id           = "fwl-vcn"
            search_domain        =  {
                names = ["org.com"]
            }
    },
    prod-vcn_dhcp-external = {
            compartment_id           = "Network"
            server_type              = "VcnLocalPlusInternet"
            display_name     = "dhcp-external"
            vcn_id           = "prod-vcn"
            search_domain        =  {
                names = ["org.com"]
            }
    },
    prod-vcn_dhcp-internal = {
            compartment_id           = "Network"
            server_type              = "VcnLocalPlusInternet"
            display_name     = "dhcp-internal"
            vcn_id           = "prod-vcn"
            search_domain        =  {
                names = ["org.com"]
            }
    },
    nonprod-vcn_dhcp-external = {
            compartment_id           = "Network"
            server_type              = "VcnLocalPlusInternet"
            display_name     = "dhcp-external"
            vcn_id           = "nonprod-vcn"
            search_domain        =  {
                names = ["org.com"]
            }
    },
    nonprod-vcn_dhcp-internal = {
            compartment_id           = "Network"
            server_type              = "VcnLocalPlusInternet"
            display_name     = "dhcp-internal"
            vcn_id           = "nonprod-vcn"
            search_domain        =  {
                names = ["org.com"]
            }
    },
}