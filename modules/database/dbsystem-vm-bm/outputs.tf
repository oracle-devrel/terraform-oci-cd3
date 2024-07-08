// Copyright (c) 2021, 2022, Oracle and/or its affiliates.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Outputs Block - Database
# Create Database VM BM
############################

output "database_tf_id" {
  value = oci_database_db_system.database_db_system.id
}