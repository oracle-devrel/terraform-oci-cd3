# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Identity
# Network Sources - tfvars
# Sample import command for network sources:
# terraform import "module.iam-network-sources[\"<<terraform variable name>>\"].oci_identity_network_source.network_source" <<id>>
############################
networkSources = {
  test_ns = {
        name        = "test_ns"
        description = "test network source"
        public_source_list  = ["160.34.0.0/16"]
    },
  }