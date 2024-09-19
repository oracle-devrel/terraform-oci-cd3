# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#############################
# Network
# Load Balancers - tfvars
# Allowed values:
# vcn_name and subnet_names must be the names of the VCN and Subnets as per OCI respectively
# compartment_id and network_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network--Prod" where "Network" is the parent of "Prod" compartment
# ip_mode can be one of IPV4 or IPV6
# shape can be one of 100Mbps|10Mbps|10Mbps-Micro|400Mbps|8000Mbps|flexible
# reserved_ips_id accepts OCID (to use the existing reserved IP) or 'Y' to create a new Reserved IP or 'N' for Ephemeral IP; Defaults to "".
# Sample import command for Load Balancers:
# terraform import "module.load-balancers[\"<<load_balancers terraform variable name>>\"].oci_load_balancer_load_balancer.load_balancer" <<loadbalancer ocid>>
#############################
load_balancers = {
    lb-1 = {
        display_name = "lb-1"
        compartment_id = "Network"
        shape = "flexible"
        shape_details = [{
            #Required
            maximum_bandwidth_in_mbps = 10
            minimum_bandwidth_in_mbps = 10
        }]
        network_compartment_id = "Network"
        vcn_name = "prod-vcn"
        subnet_ids =  ["prod-web"]
        is_private = true
        reserved_ips_id = "N"
        defined_tags = {
                "Oracle-Tags.CreatedOn"= "2024-07-24T10:52:20.872Z" ,
                "Oracle-Tags.CreatedBy"= "oracleidentitycloudservice/suruchi.singla@oracle.com"
        }
        },
##Add New Load Balancers for phoenix here##
}