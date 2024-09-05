# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# ManagementServices
# Notifications_Subscriptions - tfvars
# Allowed Values:
# topic_id can be ocid or the key of notifications_topics (map)
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Security--Prod" where "Security" is the parent of "Prod" compartment
############################
notifications_subscriptions = {
    NetworkTopic_sub1 = {
        subscription_name = "NetworkTopic_sub1"
        compartment_id = "Network"
        endpoint = "abc@oracle.com"
        protocol = "EMAIL"
        topic_id = "NetworkTopic"
    },
  SecurityTopic_sub1 = {
        subscription_name = "SecurityTopic_sub1"
        compartment_id = "Security"
        endpoint = "abc@oracle.com"
        protocol = "EMAIL"
        topic_id = "SecurityTopic"
    },
  StorageTopic_sub1 = {
        subscription_name = "StorageTopic_sub1"
        compartment_id = "AppDev"
        endpoint = "abc@oracle.com"
        protocol = "EMAIL"
        topic_id = "StorageTopic"
    },
  ComputeTopic_sub1 = {
        subscription_name = "ComputeTopic_sub1"
        compartment_id = "AppDev"
        endpoint = "abc@oracle.com"
        protocol = "EMAIL"
        topic_id = "ComputeTopic"
    },
  DatabaseTopic_sub1 = {
        subscription_name = "DatabaseTopic_sub1"
        compartment_id = "Database"
        endpoint = "abc@oracle.com"
        protocol = "EMAIL"
        topic_id = "DatabaseTopic"
    },
  BudgetTopic_sub1 = {
        subscription_name = "BudgetTopic_sub1"
        compartment_id = "root"
        endpoint = "abc@oracle.com"
        protocol = "EMAIL"
        topic_id = "BudgetTopic"
    },
  CloudGuardTopic_sub1 = {
        subscription_name = "CloudGuardTopic_sub1"
        compartment_id = "Security"
        endpoint = "abc@oracle.com"
        protocol = "EMAIL"
        topic_id = "CloudGuardTopic"
    },
##Add New Subscriptions for phoenix here##
}