# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Identity
# Users - tfvars
# Sample import command for users:
# terraform import "module.iam-users[\"<<user terraform variable name>>\"].oci_identity_user.user" <<user ocid>>
############################
users = {
  myuser = {
        name        = "myuser"
        description = "myuser test"
        email = "myuser.test@oracle.com"
        enabled_capabilities = ["api_keys", "customer_secret_keys"]
    },
  }