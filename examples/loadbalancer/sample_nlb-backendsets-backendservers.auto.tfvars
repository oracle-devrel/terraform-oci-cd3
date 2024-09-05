# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#############################
# Network
# Network Load Balancers Backend Sets - tfvars
# Allowed Values:
# network_load_balancer_id can be ocid or the key of network_load_balancers (map)
# Sample import command for Network Load Balancer Backendset:
# terraform import "module.nlb-backend-sets[\"<<backendset terraform variable name>>\"].oci_network_load_balancer_backend_set.backend_set" networkLoadBalancers/<<network loadbalancer ocid>>/backendSets/<<backendset name>>
#############################
nlb_backend_sets = {
    nlb-1_backendset_1 = {
        name = "backendset_1"
        network_load_balancer_id = "nlb-1"
        policy = "FIVE_TUPLE"
        is_preserve_source  = true
        protocol = "HTTP"
        interval_in_millis = "10000"
        port = "0"
        return_code = 200
        url_path = "/"
    },
##Add New Backend Sets for phoenix here##
}

#############################
# Network
# Network Load Balancer Backends - tfvars
# Allowed Values:
# backend_set_name must be the key of backend_set_name (map)
# network_load_balancer_id can be ocid or the key of network_load_balancers (map)
# Sample import command for Network Load Balancer Backend:
# terraform import "module.nlb-backends[\"<<backend terraform variable name>>\"].oci_network_load_balancer_backend.backend" networkLoadBalancers/<<netwrok loadbalancer ocid>>/backendSets/<<backendset name>>/backends/<<backend name>>
#############################
nlb_backends = {
    nlb-1_backendset_1_workvm-1 = {
        backend_set_name = "nlb-1_backendset_1"
        network_load_balancer_id = "nlb-1"
        instance_compartment = "AppDev"
        ip_address = "NAME:workvm" # Format -->  "IP:<ip_address>" or "NAME:<server_name>"
        port = "8443"
    },
##Add New Backends for phoenix here##
}