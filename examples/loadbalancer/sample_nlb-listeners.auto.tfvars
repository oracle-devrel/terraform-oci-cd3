# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#############################
# Network
# Network Load Balancers - tfvars
# Allowed values:
# vcn_name and subnet_names must be the names of the VCN and Subnets as per OCI respectively
# compartment_id and network_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network--Prod" where "Network" is the parent of "Prod" compartment
# ip_mode can be one of IPV4 or IPV6
# reserved_ips_id accepts OCID (to use the existing reserved IP) or 'Y' to create a new Reserved IP or 'N' for Ephemeral IP; Defaults to "".
# Sample import command for Network LoadBalancers:
# terraform import "module.network-load-balancers[\"<<network loadbalancer terraform variable name>>\"].oci_network_load_balancer_network_load_balancer.network_load_balancer" <<network loadbalancer ocid>>
#############################
network_load_balancers = {
    nlb-1 = {
        display_name = "nlb-1"
        compartment_id = "Network"
        network_compartment_id = "Network"
        vcn_name = "nonprod-vcn"
        subnet_id =  "subnet-2"
        is_private = true
        reserved_ips_id = "N"
        is_preserve_source_destination = false
        assigned_private_ipv4 = "10.111.1.89"
        defined_tags = {
                "Oracle-Tags.CreatedOn"= "2024-09-03T10:29:18.327Z" ,
                "Oracle-Tags.CreatedBy"= "oracleidentitycloudservice/suruchi.singla@oracle.com"
        }
        freeform_tags = {}
        },
##Add New Network Load Balancers for phoenix here##
}
# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#############################
# Network
# Listeners - tfvars
# Allowed Values:
# Protocols -
# network_load_balancer_id can be the ocid or the key of load_balancers (map)
# Sample import command for Network Load Balancer Listener:
# terraform import "module.nlb-listeners[\"<<listener terraform variable name>>\"].oci_network_load_balancer_listener.listener" networkLoadBalancers/<<network loadbalancer ocid>>/listeners/<<listener name>>
#############################
nlb_listeners = {
    nlb-1_listener-1 = {
        name = "listener-1"
        network_load_balancer_id = "nlb-1"
        port = "8443"
        protocol = "TCP"
        default_backend_set_name = "nlb-1_backendset_1"
    },
##Add New Listeners for phoenix here##
}