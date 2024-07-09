// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Output Block - ManagementServices
# Create Notifications_Subscriptions
############################

output "topic_subscription_tf_id" {
  description = "Topic Subscription OCID"
  value       = oci_ons_subscription.subscription.id
}