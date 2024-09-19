// Copyright (c) 2024, 2025, Oracle and/or its affiliates.
#############################
# Network
# Routing Policy - tfvars
# Allowed Values:
# load_balancer_id can be the ocid or the key of load_balancers (map)
# Sample import command for Routing Policy:
# terraform import "module.routing-policy\"<<routing policy terraform variable name>>\"].oci_load_balancer_load_balancer_routing_policy.load_balancer_routing_policy" <<routing policy ocid>>
#############################
lb_routing_policies = {
  lb-1_policy2  = {
    condition_language_version   = "V1"
    load_balancer_id             = "lb-1"
    name                         = "policy2"
    rules = [
          {
            condition        = "all(http.request.url.path eq (i 'pol2hello'))"
            name             = "rule_1"
            backend_set_name = "bs2"
          }
        ]
        },
##Add New Routing Policy for phoenix here##
}