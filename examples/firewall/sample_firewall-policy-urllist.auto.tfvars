

# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
############################
# Firewall Policy URL Lists
# Firewall Policy URL List - tfvars
# Allowed Values:
# network_firewall_policy_id can be the ocid or the name of the firewall Policy that needs to be attached to the Firewall
# Sample import command for Firewall Policy URL List:
# terraform import "module.url_lists[\"<<url-list terraform variable name>>\"].oci_network_firewall_network_firewall_policy_url_list.network_firewall_policy_url_list\\"  networkFirewallPolicies/<<firewall-policy ocid>>/urlLists/<<url-list ocid>>
############################
url_lists = {
OCI-FWL-Policy_trusted-url-list = {
  urllist_name = "trusted-url-list"
  network_firewall_policy_id = "OCI-FWL-Policy"
  urls = [{
    pattern = "*.oracle.com"
    type = "SIMPLE"
  },
  {
    pattern = "*.oraclecloud.com"
    type = "SIMPLE"
  },
  {
    pattern = "*.identity.oraclecloud.com"
    type = "SIMPLE"
  },
  {
    pattern = "*.portoakland.com"
    type = "SIMPLE"
  },
  ]
 },
##Add New urllist for phoenix here##
}