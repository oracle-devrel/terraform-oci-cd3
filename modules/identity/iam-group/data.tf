// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
data "oci_identity_users" "users" {

  compartment_id = var.tenancy_ocid
}

output "users_details" {
  value = data.oci_identity_users.users
}

