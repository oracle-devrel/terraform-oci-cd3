// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#######################################
# Output Block - Network Load Balancer
# Create Network Load Balancer Backend
#######################################


output "nlb_backend_tf_id" {
  description = "Network Load Balancer Backend ocid"
  value       = oci_network_load_balancer_backend.backend.id
}
