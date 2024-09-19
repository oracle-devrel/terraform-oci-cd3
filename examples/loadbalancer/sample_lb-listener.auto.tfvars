# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#############################
# Network
# Listeners - tfvars
# Allowed Values:
# HTTPS listener must have the protocol specified as HTTP
# protocols in ssl configuration defaults to "TLSv1.2"
# load_balancer_id can be the ocid or the key of load_balancers (map)
# default_backend_set_name,hostname_names,path_route_set_name,rule_set_names,cipher_suite_name,certificate_name must be the key of the respective maps
# Sample import command for Listeners:
# terraform import "module.listeners[\"<<listeners terraform variable name>>\"].oci_load_balancer_listener.listener" loadBalancers/<<loadbalancer ocid>>/listeners/<<listener name>>
#############################
listeners = {
    lb-1_listener_1 = {
        name = "listener_1"
        load_balancer_id = "lb-1"
        port = "80"
        protocol = "HTTP"
        default_backend_set_name = "lb-1_bs2"
        connection_configuration = [{
            idle_timeout_in_seconds = "60"
            }]
        hostname_names = []
        rule_set_names = []
    },
##Add New Listeners for phoenix here##
}