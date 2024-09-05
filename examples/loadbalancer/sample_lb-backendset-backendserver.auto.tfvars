# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#############################
# Network
# Backend Sets - tfvars
# Allowed Values:
# load_balancer_id can be ocid or the key of load_balancers (map)
# protocols in ssl configuration defaults to "TLSv1","TLSv1.1","TLSv1.2"
# Sample import command for Backend Sets:
# terraform import "module.backend-sets[\"<<backend_sets terraform variable name>>\"].oci_load_balancer_backend_set.backend_set" loadBalancers/<<loadbalancer ocid>>/backendSets/<<backendset name>>
#############################
backend_sets = {
    lb-1_bs2 = {
        name = "bs2"
        load_balancer_id = "lb-1"
        policy = "ROUND_ROBIN"
        protocol = "TCP"
        interval_ms = "10000"
        port = "0"
    },
    lb-1_bs1 = {
        name = "bs1"
        load_balancer_id = "lb-1"
        policy = "ROUND_ROBIN"
        protocol = "HTTP"
        interval_ms = "10000"
        port = "80"
        url_path = "/"
    },
##Add New Backend Sets for phoenix here##
}

#############################
# Network
# Backends - tfvars
# Allowed Values:
# backendset_name must be the key of backend_sets (map)
# load_balancer_id can be ocid or the key of load_balancers (map)
# Sample import command for Backend Sets:
# terraform import "module.backends[\"<<backends terraform variable name>>\"].oci_load_balancer_backend.backend" loadBalancers/<<loadbalancer ocid>>/backendSets/<<backendset name>>/backends/<<backend server name or ip>>:<<port>>
#############################
backends = {
    lb-1_bs2_c172-16-0-37-1 = {
        backendset_name = "lb-1_bs2"
        load_balancer_id = "lb-1"
        instance_compartment = "Network"
        ip_address = "IP:172.16.0.37" # Format -->  "IP:<ip_address>" or "NAME:<server_name>"
        port = "80"
        backup = "false"
        },
    lb-1_bs2_c10-1-1-0-2 = {
        backendset_name = "lb-1_bs2"
        load_balancer_id = "lb-1"
        instance_compartment = "Network"
        ip_address = "IP:10.1.1.0" # Format -->  "IP:<ip_address>" or "NAME:<server_name>"
        port = "80"
        backup = "false"
        },
    lb-1_bs1_c10-110-1-54-1 = {
        backendset_name = "lb-1_bs1"
        load_balancer_id = "lb-1"
        instance_compartment = "Network"
        ip_address = "IP:10.110.1.54" # Format -->  "IP:<ip_address>" or "NAME:<server_name>"
        port = "80"
        backup = "false"
        },
##Add New Backends for phoenix here##
}