// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
################################
## Outputs Block - Secondary Private IP
## Create Secondary Private IP
################################

output "private_ip_tf_id" {
  value = oci_core_private_ip.private_ip.id
}