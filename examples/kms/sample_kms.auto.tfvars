# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Security
# Create KMS Vault and Key
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c"
# Sample import command:
# terraform import "module.vaults[\"<<vault terraform variable name>>\"].oci_kms_vault.vault" <vault ocid>
############################
vaults = {
    vault-1 = {
            compartment_id = "Security"
            display_name = "vault-1"
            vault_type = "DEFAULT"
            },
    vault-2 = {
            compartment_id = "Security"
            display_name = "vault-2"
            vault_type = "VIRTUAL_PRIVATE"
            replica_region = "uk-london-1"
            },
##Add New Vaults for phoenix here##
}

############################
# Security
# Create KMS Vault and Key
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network-root-cpt--Network" where "Network-root-cpt" is the parent of "Network" compartment
# length : AES: 16, 24, or 32, RSA: 256, 384, or 512, ECDSA: 32, 48, or 66
# Sample import command:
# terraform import "module.keys[\"<<key terraform variable name>>\"].oci_kms_key.key" managementEndpoint/<management_endpoint>/keys/<key id>
############################
keys = {
    key-1 = {
            compartment_id = "Security"
            display_name = "key-1"
            vault_name = "vault-1"
            algorithm = "AES"
            length = 32
            protection_mode = "HSM"
            },
    key-2 = {
            compartment_id = "AppDev"
            display_name = "key-2"
            vault_name = "vault-1"
            algorithm = "ECDSA"
            length = 48
            curve_id = "NIST_P384"
            protection_mode = "SOFTWARE"
            },
    key-1 = {
            compartment_id = "Security"
            display_name = "key-1"
            vault_name = "vault-2"
            algorithm = "AES"
            length = 16
            protection_mode = "SOFTWARE"
            is_auto_rotation_enabled = "true"
            rotation_interval_in_days = 100
            },
    key-2 = {
            compartment_id = "AppDev"
            display_name = "key-2"
            vault_name = "vault-2"
            algorithm = "RSA"
            length = 384
            protection_mode = "SOFTWARE"
            },
    key-3 = {
            compartment_id = "Database"
            display_name = "key-3"
            vault_name = "vault-2"
            algorithm = "ECDSA"
            length = 66
            curve_id = "NIST_P521"
            protection_mode = "HSM"
            is_auto_rotation_enabled = "true"
            rotation_interval_in_days = 365
            },
##Add New Keys for phoenix here##
}