// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Output Block - Network
# Create Internet Gateway
############################

output "igw_tf_id" {
  value = oci_core_internet_gateway.internet_gateway.id
}