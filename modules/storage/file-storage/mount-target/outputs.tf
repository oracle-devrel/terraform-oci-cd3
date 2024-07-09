// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Output Block - Storage
# Create MTs
############################

output "mt_tf_id" {
  value = oci_file_storage_mount_target.mount_target.id
}

output "mt_exp_set_id" {
  value = oci_file_storage_mount_target.mount_target.export_set_id
}
