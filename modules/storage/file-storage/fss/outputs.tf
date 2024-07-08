// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Output Block - Storage
# Create FSS
############################

output "fss_tf_id" {
  value = oci_file_storage_file_system.file_system.id
}
