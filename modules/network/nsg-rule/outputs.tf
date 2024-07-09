// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#############################
# Output Block - Networking
# Create Network Security Groups
#############################

output "nsg_rule_tf_id" {
  value = oci_core_network_security_group_security_rule.nsg_rule.id
}
