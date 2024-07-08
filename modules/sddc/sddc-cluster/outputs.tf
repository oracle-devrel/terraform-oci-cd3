// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Outputs Block - Custom Backup Policy
# Create Custom Backup Policy
############################



output "sddc_cluster_tf_id" {
  value = oci_ocvp_cluster.sddc_cluster.id
}
