

# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#############################
# Firewall Policy Service Lists
# Firewall Policy Service List - tfvars
# Allowed Values:
# network_firewall_policy_id can be the ocid or the name of the firewall Policy that needs to be attached to the Firewall
# Sample import command for Firewall Policy Service List:
# terraform import "module.service_lists[\"<<service-list terraform variable name>>\"].oci_network_firewall_network_firewall_policy_service_list.network_firewall_policy_service_list\"  networkFirewallPolicies/<<firewall-policy ocid>>/serviceLists/<<service-list ocid>>
############################
service_lists = {
OCI-FWL-Policy_Svc-List-1 = {
  service_list_name = "Svc-List-1"
  network_firewall_policy_id = "OCI-FWL-Policy"
  services = ["all-ports","mgmt-port"]
  },
##Add New service list for phoenix here##
}