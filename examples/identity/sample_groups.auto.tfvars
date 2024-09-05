# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Identity
# Groups - tfvars
# Sample import command for groups:
# terraform import "module.iam-groups[\"<<groups terraform variable name>>\"].oci_identity_group.group[0]" <<group ocid>>
# terraform import "module.iam-groups[\"<<dynamic group terraform variable name>>\"].oci_identity_dynamic_group.dynamic_group[0]" <<dynamic group ocid>>
############################
groups = {
  AppDevAdmins = {
        group_name        = "AppDevAdmins"
        group_description = "Group responsible for managing app development related services in compartment AppDev."
    },
    StorageAdmins = {
        group_name        = "StorageAdmins"
        group_description = "Group responsible for Storage Management."
    },
    Auditors = {
        group_name        = "Auditors"
        group_description = "Group responsible for Auditing the tenancy"
    },
    DatabaseAdmins = {
        group_name        = "DatabaseAdmins"
        group_description = "Group responsible for managing databases in compartment Database."
    },
    IAMAdmins = {
        group_name        = "IAMAdmins"
        group_description = "Group responsible for managing IAM resources in the tenancy."
    },
    NetworkAdmins = {
        group_name        = "NetworkAdmins"
        group_description = "Group responsible for managing networking in compartment Network."
    },
    SecurityAdmins = {
        group_name        = "SecurityAdmins"
        group_description = "Group responsible for managing security services in compartment Security."
    },
    AnnouncementReaders = {
        group_name        = "AnnouncementReaders"
        group_description = "Group responsible for Console Announcements"
    },
    CredAdmins = {
        group_name        = "CredAdmins"
        group_description = "Group responsible for managing users credentials in the tenancy."
    },
    CostAdmins = {
        group_name        = "CostAdmins"
        group_description = "Group responsible for Cost Management"
    },
  }