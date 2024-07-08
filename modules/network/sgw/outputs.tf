// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Output Block - Network
# Create Service Gateway
############################

output "sgw_tf_id" {
  value = oci_core_service_gateway.service_gateway.id
}