// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.

############################
# Outputs Block - Instance
# Create Instance and Boot Volume Backup Policy
############################

output "instance_tf_id" {
  value = oci_core_instance.instance.id
}