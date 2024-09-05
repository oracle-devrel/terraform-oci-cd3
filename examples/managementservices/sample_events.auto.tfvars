# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# ManagementServices
# Events - tfvars
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Security--Prod" where "Security" is the parent of "Prod" compartment
############################
events = {
  notify-on-iam-changes-rule = {
        compartment_id = "root"
        event_name = "notify-on-iam-changes-rule"
        is_enabled = true
        description    = "events rule to detect when IAM resources are created, updated or deleted."
        condition      = "{\"eventType\":[\"com.oraclecloud.identitycontrolplane.createidentityprovider\",\"com.oraclecloud.identitycontrolplane.deleteidentityprovider\",\"com.oraclecloud.identitycontrolplane.updateidentityprovider\",\"com.oraclecloud.identitycontrolplane.createidpgroupmapping\",\"com.oraclecloud.identitycontrolplane.deleteidpgroupmapping\",\"com.oraclecloud.identitycontrolplane.updateidpgroupmapping\",\"com.oraclecloud.identitycontrolplane.addusertogroup\",\"com.oraclecloud.identitycontrolplane.creategroup\",\"com.oraclecloud.identitycontrolplane.deletegroup\",\"com.oraclecloud.identitycontrolplane.removeuserfromgroup\",\"com.oraclecloud.identitycontrolplane.updategroup\",\"com.oraclecloud.identitycontrolplane.createpolicy\",\"com.oraclecloud.identitycontrolplane.deletepolicy\",\"com.oraclecloud.identitycontrolplane.updatepolicy\",\"com.oraclecloud.identitycontrolplane.createuser\",\"com.oraclecloud.identitycontrolplane.deleteuser\",\"com.oraclecloud.identitycontrolplane.updateuser\",\"com.oraclecloud.identitycontrolplane.updateusercapabilities\",\"com.oraclecloud.identitycontrolplane.updateuserstate\"],\"data\":{}}"
        actions        = [
                       {
                action_type = "ONS"
                is_enabled = true
                topic_id = "SecurityTopic"
                description = "Sends notification via ONS"
               },
        ]
    },
    notify-on-network-changes-rule = {
        compartment_id = "root"
        event_name = "notify-on-network-changes-rule"
        is_enabled = true
        description    = "events rule to detect when networking resources are created, updated or deleted."
        condition      = "{\"eventType\":[\"com.oraclecloud.virtualnetwork.createvcn\",\"com.oraclecloud.virtualnetwork.deletevcn\",\"com.oraclecloud.virtualnetwork.updatevcn\",\"com.oraclecloud.virtualnetwork.createroutetable\",\"com.oraclecloud.virtualnetwork.deleteroutetable\",\"com.oraclecloud.virtualnetwork.updateroutetable\",\"com.oraclecloud.virtualnetwork.changeroutetablecompartment\",\"com.oraclecloud.virtualnetwork.createsecuritylist\",\"com.oraclecloud.virtualnetwork.deletesecuritylist\",\"com.oraclecloud.virtualnetwork.updatesecuritylist\",\"com.oraclecloud.virtualnetwork.changesecuritylistcompartment\",\"com.oraclecloud.virtualnetwork.createnetworksecuritygroup\",\"com.oraclecloud.virtualnetwork.deletenetworksecuritygroup\",\"com.oraclecloud.virtualnetwork.updatenetworksecuritygroup\",\"com.oraclecloud.virtualnetwork.updatenetworksecuritygroupsecurityrules\",\"com.oraclecloud.virtualnetwork.changenetworksecuritygroupcompartment\",\"com.oraclecloud.virtualnetwork.createdrg\",\"com.oraclecloud.virtualnetwork.deletedrg\",\"com.oraclecloud.virtualnetwork.updatedrg\",\"com.oraclecloud.virtualnetwork.createdrgattachment\",\"com.oraclecloud.virtualnetwork.deletedrgattachment\",\"com.oraclecloud.virtualnetwork.updatedrgattachment\",\"com.oraclecloud.virtualnetwork.createinternetgateway\",\"com.oraclecloud.virtualnetwork.deleteinternetgateway\",\"com.oraclecloud.virtualnetwork.updateinternetgateway\",\"com.oraclecloud.virtualnetwork.changeinternetgatewaycompartment\",\"com.oraclecloud.virtualnetwork.createlocalpeeringgateway\",\"com.oraclecloud.virtualnetwork.deletelocalpeeringgateway.end\",\"com.oraclecloud.virtualnetwork.updatelocalpeeringgateway\",\"com.oraclecloud.virtualnetwork.changelocalpeeringgatewaycompartment\",\"com.oraclecloud.natgateway.createnatgateway\",\"com.oraclecloud.natgateway.deletenatgateway\",\"com.oraclecloud.natgateway.updatenatgateway\",\"com.oraclecloud.natgateway.changenatgatewaycompartment\",\"com.oraclecloud.servicegateway.createservicegateway\",\"com.oraclecloud.servicegateway.deleteservicegateway.end\",\"com.oraclecloud.servicegateway.attachserviceid\",\"com.oraclecloud.servicegateway.detachserviceid\",\"com.oraclecloud.servicegateway.updateservicegateway\",\"com.oraclecloud.servicegateway.changeservicegatewaycompartment\"],\"data\":{}}"
        actions        = [
                       {
                action_type = "ONS"
                is_enabled = true
                topic_id = "NetworkTopic"
                description = "Sends notification via ONS"
               },
        ]
    },
    notify-on-budget-changes-rule = {
        compartment_id = "root"
        event_name = "notify-on-budget-changes-rule"
        is_enabled = true
        description    = "events rule to detect when cost resources such as budgets and financial tracking constructs are created, updated or deleted."
        condition      = "{\"eventType\":[\"com.oraclecloud.budgets.updatealertrule\",\"com.oraclecloud.budgets.deletealertrule\",\"com.oraclecloud.budgets.updatebudget\",\"com.oraclecloud.budgets.deletebudget\"],\"data\":{}}"
        actions        = [
                       {
                action_type = "ONS"
                is_enabled = true
                topic_id = "BudgetTopic"
                description = "Sends notification via ONS"
               },
        ]
    },
    notify-on-compute-changes-rule = {
        compartment_id = "AppDev"
        event_name = "notify-on-compute-changes-rule"
        is_enabled = true
        description    = "events rule to detect when compute related resources are created, updated or deleted."
        condition      = "{\"eventType\":[\"com.oraclecloud.computeapi.terminateinstance.begin\"],\"data\":{}}"
        actions        = [
                       {
                action_type = "ONS"
                is_enabled = true
                topic_id = "ComputeTopic"
                description = "Sends notification via ONS"
               },
        ]
    },
    notify-on-storage-changes-rule = {
        compartment_id = "AppDev"
        event_name = "notify-on-storage-changes-rule"
        is_enabled = true
        description    = "events rule to detect when storage resources are created, updated or deleted."
        condition      = "{\"eventType\":[\"com.oraclecloud.objectstorage.createbucket\",\"com.oraclecloud.objectstorage.deletebucket\",\"com.oraclecloud.blockvolumes.deletevolume.begin\",\"com.oraclecloud.filestorage.deletefilesystem\"],\"data\":{}}"
        actions        = [
                       {
                action_type = "ONS"
                is_enabled = true
                topic_id = "StorageTopic"
                description = "Sends notification via ONS"
               },
        ]
    },
    notify-on-database-changes-rule = {
        compartment_id = "Database"
        event_name = "notify-on-database-changes-rule"
        is_enabled = true
        description    = "events rule to detect when database resources are created, updated or deleted in the database compartment."
        condition      = "{\"eventType\":[\"com.oraclecloud.databaseservice.exadatainfrastructure.critical\",\"com.oraclecloud.databaseservice.autonomous.cloudautonomousvmcluster.critical\",\"com.oraclecloud.databaseservice.autonomous.database.critical\",\"com.oraclecloud.databaseservice.dbsystem.critical\"],\"data\":{}}"
        actions        = [
                       {
                action_type = "ONS"
                is_enabled = true
                topic_id = "DatabaseTopic"
                description = "Sends notification via ONS"
               },
        ]
    },
    notify-on-cloudguard-events-rule = {
        compartment_id = "root"
        event_name = "notify-on-cloudguard-events-rule"
        is_enabled = true
        description    = "Landing Zone events rule to notify when Cloud Guard problems are Detected, Dismissed or Resolved."
        condition      = "{\"eventType\":[\"com.oraclecloud.cloudguard.problemdetected\",\"com.oraclecloud.cloudguard.problemdismissed\",\"com.oraclecloud.cloudguard.problemremediated\"],\"data\":{}}"
        actions        = [
                       {
                action_type = "ONS"
                is_enabled = true
                topic_id = "CloudGuardTopic"
                description = "Sends notification via ONS"
               },
        ]
    },
  }