// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Output Block - Network
# Create Security List
############################

output "seclist_tf_id" {
  #value = oci_core_security_list.security_list.id
  value = one(concat(oci_core_security_list.security_list.*.id,oci_core_default_security_list.default_security_list.*.id))
}