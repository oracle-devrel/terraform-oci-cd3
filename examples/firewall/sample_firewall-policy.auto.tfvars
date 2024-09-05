

# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#############################
# Firewall Policy
# Firewall Policy - tfvars
# Allowed Values:
# compartment_id can be the ocid or the name of the Compartment where the firewall policy needs to be created
# Sample import command for Firewall Policy:
# terraform import "module.policies[\"<<policy terraform variable name>>\"].ci_network_firewall_network_firewall_policy.network_firewall_policy" <<policy ocid>>
############################
fw-policies = {
  OCI-FWL-Policy = {
        compartment_id = "Network"
        display_name = "OCI-FWL-Policy"
        defined_tags = {
                "Oracle-Tags.CreatedOn"= "2024-03-14T06:15:46.139Z" ,
                "Oracle-Tags.CreatedBy"= "oracleidentitycloudservice/suruchi.singla@oracle.com"
        }
      },
##Add New firewall policy for phoenix here##
}