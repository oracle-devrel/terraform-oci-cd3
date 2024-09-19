

# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#############################
# Firewall Policy Security Rules
# Firewall Policy Security Rule - tfvars
# Allowed Values:
# network_firewall_policy_id can be the ocid or the name of the firewall Policy that needs to be attached to the Firewall
# action can be ALLOW, DROP, REJECT, INSPECT
# inspection can be INTRUSION_DETECTION, INTRUSION_PREVENTION
# Sample import command for Firewall Policy Security Rule:
# terraform import "module.security_rules[\"<<secrule terraform variable name>>\"].oci_network_firewall_network_firewall_policy_security_rule.network_firewall_policy_security_rule\"  networkFirewallPolicies/<<firewall-policy ocid>>/securityRules/<<secrule ocid>>
############################
security_rules = {
  OCI-FWL-Policy_rule-1 = {
        rule_name = "rule-1"
        action = "REJECT"
        network_firewall_policy_id = "OCI-FWL-Policy"
        condition = [{
            source_address = ["pub-list"]
        }]
      },
  OCI-FWL-Policy_rule-2 = {
        rule_name = "rule-2"
        action = "INSPECT"
        network_firewall_policy_id = "OCI-FWL-Policy"
        condition = [{
            destination_address = ["vcn-region-list"]
            service = ["Svc-List-1"]
            application = ["App-List-1"]
            url = ["trusted-url-list"]
        }]
        inspection = "INTRUSION_PREVENTION"
        after_rule = "rule-1"
      },
##Add New Security rules for phoenix here##
}