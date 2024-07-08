// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Output Block - Identity
# Create Users
############################

output "user_id_map" {
  description = "user ocid"
  value       = zipmap(oci_identity_user.user.*.name, oci_identity_user.user.*.id)
}