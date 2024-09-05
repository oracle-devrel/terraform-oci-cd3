

# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#############################
# Firewall Policy Services
# Firewall Policy Service - tfvars
# Allowed Values:
# network_firewall_policy_id can be the ocid or the name of the firewall Policy that needs to be attached to the Firewall
# service_type can be TCP_SERVICE and UDP_SERVICE
# Sample import command for Firewall Policy Service:
# terraform import "module.services[\"<<service terraform variable name>>\"].oci_network_firewall_network_firewall_policy_service.network_firewall_policy_service\"  networkFirewallPolicies/<<firewall-policy ocid>>/services/<<service ocid>>
############################
services = {
OCI-FWL-Policy_all-ports = {
  service_name = "all-ports"
  network_firewall_policy_id = "OCI-FWL-Policy"
  port_ranges = [{
    minimum_port ="22"
    maximum_port ="22"
  },  
  {
    minimum_port ="20"
    maximum_port ="21"
  },  
  {
    minimum_port ="1024"
    maximum_port ="65235"
  }]
  service_type = "TCP_SERVICE"
  },
OCI-FWL-Policy_mgmt-port = {
  service_name = "mgmt-port"
  network_firewall_policy_id = "OCI-FWL-Policy"
  port_ranges = [{
    minimum_port ="123"
    maximum_port ="123"
  }]
  service_type = "TCP_SERVICE"
  },
OCI-FWL-Policy_all-ports = {
  service_name = "all-ports"
  network_firewall_policy_id = "OCI-FWL-Policy"
  port_ranges = [{
    minimum_port ="22"
    maximum_port ="22"
  },  
  {
    minimum_port ="20"
    maximum_port ="21"
  },  
  {
    minimum_port ="1024"
    maximum_port ="65235"
  }]
  service_type = "TCP_SERVICE"
  },
OCI-FWL-Policy_mgmt-port = {
  service_name = "mgmt-port"
  network_firewall_policy_id = "OCI-FWL-Policy"
  port_ranges = [{
    minimum_port ="123"
    maximum_port ="123"
  }]
  service_type = "TCP_SERVICE"
  },
##Add New service policy for phoenix here##
}