

# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#############################
# Firewall Policy Application Lists
# Firewall Policy Application List - tfvars
# Allowed Values:
# network_firewall_policy_id can be the ocid or the name of the firewall Policy that needs to be attached to the Firewall
# Sample import command for Firewall Policy Application List:
# terraform import "module.application_groups[\"<<application-list terraform variable name>>\"].oci_network_firewall_network_firewall_policy_application_group.network_firewall_policy_application_group\"  networkFirewallPolicies/<<firewall-policy ocid>>/applicationGroups/<<application-list ocid>>
############################
application_groups = {
OCI-FWL-Policy_App-List-1 = {
  app_group_name = "App-List-1"
  network_firewall_policy_id = "OCI-FWL-Policy"
  apps = ["icmp-resp","icmpv6-req"]
  },
##Add New application list for phoenix here##
}