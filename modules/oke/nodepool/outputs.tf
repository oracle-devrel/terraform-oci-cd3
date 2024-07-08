// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Outputs Block - Nodepool
# Create Nodepool and nodes
############################

output "nodepool_tf_id" {
  value = oci_containerengine_node_pool.nodepool.id
}