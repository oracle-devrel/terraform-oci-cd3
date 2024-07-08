// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Output Block - ManagementServices
# Create Events
############################

output "event_tf_id" {
  description = "Event OCID"
  value       = oci_events_rule.event.id
}