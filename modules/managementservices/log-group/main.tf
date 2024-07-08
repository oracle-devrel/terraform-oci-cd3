// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
#############################
# Module Block - Logging
# Create Log Groups
#############################

resource "oci_logging_log_group" "log_group" {

  #Required
  compartment_id = var.compartment_id
  display_name   = var.display_name

  #Optional
  defined_tags  = var.defined_tags
  description   = var.description
  freeform_tags = var.freeform_tags

}

