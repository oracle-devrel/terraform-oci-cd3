# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Network
# Network Security Group Rules
# Sample import command for Network Security Group Rules:
# terraform import "module.nsg-rules[\"<<nsg_rules terraform variable name>>\"].oci_core_network_security_group_security_rule.nsg_rule" networkSecurityGroups/<<nsg ocid>>/securityRules/<<nsg rule ocid>>
############################
nsg_rules = {
  # NSG Rule map #
   prod-vcn_prod-vcn-app-nsg_security_rule1 =  {
        nsg_id = "prod-vcn_prod-vcn-app-nsg"
        direction = "INGRESS"
        protocol = "6"
        description = "Allows HTTP connections from bastion."
        source_type = "NETWORK_SECURITY_GROUP"
        source = "prod-vcn_prod-vcn-bastion-nsg"
        options = {
            tcp = [{
                destination_port_range_max = "80"
                destination_port_range_min = "80"
            }]
        }
   },
   prod-vcn_prod-vcn-bastion-nsg_security_rule1 =  {
        nsg_id = "prod-vcn_prod-vcn-bastion-nsg"
        direction = "EGRESS"
        protocol = "6"
        description = "Allows SSH connections from bastion."
        destination_type = "NETWORK_SECURITY_GROUP"
        destination = "prod-vcn_prod-vcn-app-nsg"
        options = {
            tcp = [{
                destination_port_range_max = "22"
                destination_port_range_min = "22"
            }]
        }
   },
##Add New NSG Rules for phoenix here##
}