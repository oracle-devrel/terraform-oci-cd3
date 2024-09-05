

# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#############################
# Firewalls
# Firewall -tfvars
# Allowed Values:
# compartment_id and network_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network-root-cpt--Network" where "Network-root-cpt" is the parent of "Network" compartment
# network_firewall_policy_id can be the ocid or the name of the firewall Policy that needs to be attached to the Firewall
# vcn_name must be the name of the VCN as in OCI
# subnet_id can be the ocid of the subnet or the name as in OCI
# Sample import command for Firewall:
# terraform import "module.firewalls[\"<<firewall terraform variable name>>\"].oci_network_firewall_network_firewall.network_firewall" <<firewall ocid>>
############################
firewalls = {
  OCI-FWL = {
        compartment_id = "Network"
        display_name = "OCI-FWL"
        network_firewall_policy_id = "OCI-FWL-Policy"
        network_compartment_id = "Network"
        vcn_name = "fwl-vcn"
        subnet_id = "fwl-mgmt1"
        ipv4address = "10.110.1.23"
        availability_domain = "0"
        defined_tags = {
                "Oracle-Tags.CreatedOn"= "2024-03-14T06:18:47.503Z" ,
                "Oracle-Tags.CreatedBy"= "oracleidentitycloudservice/suruchi.singla@oracle.com"
        }
      },
##Add New firewall for phoenix here##
}