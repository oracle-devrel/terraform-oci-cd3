

# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#############################
# Firewall Policy Applications
# Firewall Policy Application - tfvars
# Allowed Values:
# network_firewall_policy_id can be the ocid or the name of the firewall Policy that needs to be attached to the Firewall
# app_type can be ICMP or ICMP_V6
# Sample import command for Firewall Policy Application:
# terraform import "module.applications[\"<<application terraform variable name>>\"].oci_network_firewall_network_firewall_policy_application.network_firewall_policy_application\"  networkFirewallPolicies/<<firewall-policy ocid>>/applications/<<application ocid>>
############################
applications = {
OCI-FWL-Policy_icmp-resp = {
  app_list_name = "icmp-resp"
  network_firewall_policy_id = "OCI-FWL-Policy"
  app_type = "ICMP"
  icmp_type = "129"
  },
OCI-FWL-Policy_icmpv6-req = {
  app_list_name = "icmpv6-req"
  network_firewall_policy_id = "OCI-FWL-Policy"
  app_type = "ICMP_V6"
  icmp_type = "128"
  },
OCI-FWL-Policy_icmp-resp = {
  app_list_name = "icmp-resp"
  network_firewall_policy_id = "OCI-FWL-Policy"
  app_type = "ICMP"
  icmp_type = "129"
  },
OCI-FWL-Policy_icmpv6-req = {
  app_list_name = "icmpv6-req"
  network_firewall_policy_id = "OCI-FWL-Policy"
  app_type = "ICMP_V6"
  icmp_type = "128"
  },
##Add New apps for phoenix here##
}