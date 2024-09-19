

# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#############################
# Firewall Policy Address Lists
# Firewall Policy Address List - tfvarsß
# Allowed Values:
# network_firewall_policy_id can be the ocid or the name of the firewall Policy that needs to be attached to the Firewall
# address_type can be  IP or FQDN
# Sample import command for Firewall Policy Address List:
# terraform import "module.address_lists[\"<<address-list terraform variable name>>\"].oci_network_firewall_network_firewall_policy_address_list.network_firewall_policy_address_list\" networkFirewallPolicies/<<firewall-policy ocid>>/addressLists/<<address-list ocid>>
############################
address_lists = {
OCI-FWL-Policy_pub-list = {
  address_list_name = "pub-list"
  network_firewall_policy_id = "OCI-FWL-Policy"
  addresses = ["0.0.0.0/0"]
  address_type = "IP"
  },
OCI-FWL-Policy_vcn-region-list = {
  address_list_name = "vcn-region-list"
  network_firewall_policy_id = "OCI-FWL-Policy"
  addresses = ["10.10.1.10/32","3.1.1.1/32","3.1.1.3/32","172.2.0.0/24"]
  address_type = "IP"
  },
##Add New addresses for phoenix here##
}