# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Network
# Network Security Group - tfvars
# Allowed Values:
# vcn_id can be the ocid or vcns map key
# compartment_id and network_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# network_compartment_id is the compartment where VCN resides.
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network-root-cpt--Network" where "Network-root-cpt" is the parent of "Network" compartment
# Sample import command for Network Security Group:
# terraform import "module.nsgs[\"<<nsgs terraform variable name>>\"].oci_core_network_security_group.network_security_group" <<nsg ocid>>
############################
nsgs = {
  # NSG map #
  # Start of phoenix_prod-vcn_prod-vcn-app-nsg #
  prod-vcn_prod-vcn-app-nsg = {
        compartment_id = "Network"
        network_compartment_id = "Network"
        vcn_name     = "prod-vcn"
        display_name     = "prod-vcn-app-nsg"
    },
  # End of phoenix_prod-vcn_prod-vcn-app-nsg #
  # Start of phoenix_prod-vcn_prod-vcn-bastion-nsg #
  prod-vcn_prod-vcn-bastion-nsg = {
        compartment_id = "Network"
        network_compartment_id = "Network"
        vcn_name     = "prod-vcn"
        display_name     = "prod-vcn-bastion-nsg"
    },
  # End of phoenix_prod-vcn_prod-vcn-bastion-nsg #
##Add New NSGs for phoenix here##
}