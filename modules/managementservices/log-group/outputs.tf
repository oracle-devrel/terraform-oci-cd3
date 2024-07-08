// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#############################
# Output Block - Logging
# Create Log Groups
#############################

output "log_group_tf_id" {
  value = oci_logging_log_group.log_group.id
}