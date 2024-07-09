// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Output Block - Network
# Create Local Peering Gateway
############################

output "lpg_tf_id" {
  value = oci_core_local_peering_gateway.local_peering_gateway.id
}