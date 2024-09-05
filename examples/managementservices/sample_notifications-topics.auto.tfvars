# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# ManagementServices
# Notifications_Topics - tfvars
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Security--Prod" where "Security" is the parent of "Prod" compartment
############################
notifications_topics = {
      NetworkTopic = {
        compartment_id = "Network"
        description = "Topic for network related notifications."
        topic_name = "NetworkTopic"
    },
  SecurityTopic = {
        compartment_id = "Security"
        description = "Topic for security related notifications."
        topic_name = "SecurityTopic"
    },
  StorageTopic = {
        compartment_id = "AppDev"
        description = "Topic for storage performance related notifications."
        topic_name = "StorageTopic"
    },
  ComputeTopic = {
        compartment_id = "AppDev"
        description = "Topic for compute performance related notifications."
        topic_name = "ComputeTopic"
    },
  DatabaseTopic = {
        compartment_id = "Database"
        description = "Topic for database performance related notifications."
        topic_name = "DatabaseTopic"
    },
  BudgetTopic = {
        compartment_id = "root"
        description = "Topic for budget related notifications."
        topic_name = "BudgetTopic"
    },
  CloudGuardTopic = {
        compartment_id = "Security"
        description = "Topic for Cloud Guard related notifications."
        topic_name = "CloudGuardTopic"
    },
##Add New Topics for phoenix here##
}