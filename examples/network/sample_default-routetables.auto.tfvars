# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Network
# Major Objects - Default Route Table - tfvars
# Sample import command for Default Route Table:
# terraform import "module.default-route-tables[\"<<default_route_table terraform variable name>>\"].oci_core_default_route_table.default_route_table" <<default route table ocid>>
############################
default_route_tables = {
  # Route Table map #
  # Start of #phoenix_fwl-vcn_Default-Route-Table-for-fwl-vcn# #
    fwl-vcn_Default-Route-Table-for-fwl-vcn = {
        compartment_id = "Network"
        vcn_id     = "fwl-vcn"
        display_name     = "Default Route Table for fwl-vcn"
        ### gateway_route_table for #phoenix_fwl-vcn_Default-Route-Table-for-fwl-vcn# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_fwl-vcn_Default-Route-Table-for-fwl-vcn# ####
        ]
        route_rules_sgw = [
    ####ADD_NEW_SGW_RULES #phoenix_fwl-vcn_Default-Route-Table-for-fwl-vcn# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_fwl-vcn_Default-Route-Table-for-fwl-vcn# ####
        ]
        route_rules_drg = [
    ####ADD_NEW_DRG_RULES #phoenix_fwl-vcn_Default-Route-Table-for-fwl-vcn# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_fwl-vcn_Default-Route-Table-for-fwl-vcn# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_fwl-vcn_Default-Route-Table-for-fwl-vcn# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_fwl-vcn_Default-Route-Table-for-fwl-vcn# #
  # Start of #phoenix_prod-vcn_Default-Route-Table-for-prod-vcn# #
    prod-vcn_Default-Route-Table-for-prod-vcn = {
        compartment_id = "Network"
        vcn_id     = "prod-vcn"
        display_name     = "Default Route Table for prod-vcn"
        ### gateway_route_table for #phoenix_prod-vcn_Default-Route-Table-for-prod-vcn# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_prod-vcn_Default-Route-Table-for-prod-vcn# ####
        ]
        route_rules_sgw = [
    ####ADD_NEW_SGW_RULES #phoenix_prod-vcn_Default-Route-Table-for-prod-vcn# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_prod-vcn_Default-Route-Table-for-prod-vcn# ####
        ]
        route_rules_drg = [
    ####ADD_NEW_DRG_RULES #phoenix_prod-vcn_Default-Route-Table-for-prod-vcn# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_prod-vcn_Default-Route-Table-for-prod-vcn# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_prod-vcn_Default-Route-Table-for-prod-vcn# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_prod-vcn_Default-Route-Table-for-prod-vcn# #
  # Start of #phoenix_nonprod-vcn_Default-Route-Table-for-nonprod-vcn# #
    nonprod-vcn_Default-Route-Table-for-nonprod-vcn = {
        compartment_id = "Network"
        vcn_id     = "nonprod-vcn"
        display_name     = "Default Route Table for nonprod-vcn"
        ### gateway_route_table for #phoenix_nonprod-vcn_Default-Route-Table-for-nonprod-vcn# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_nonprod-vcn_Default-Route-Table-for-nonprod-vcn# ####
        ]
        route_rules_sgw = [
    ####ADD_NEW_SGW_RULES #phoenix_nonprod-vcn_Default-Route-Table-for-nonprod-vcn# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_nonprod-vcn_Default-Route-Table-for-nonprod-vcn# ####
        ]
        route_rules_drg = [
    ####ADD_NEW_DRG_RULES #phoenix_nonprod-vcn_Default-Route-Table-for-nonprod-vcn# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_nonprod-vcn_Default-Route-Table-for-nonprod-vcn# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_nonprod-vcn_Default-Route-Table-for-nonprod-vcn# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_nonprod-vcn_Default-Route-Table-for-nonprod-vcn# #
  # Start of #phoenix_exa-vcn_Default-Route-Table-for-exa-vcn# #
    exa-vcn_Default-Route-Table-for-exa-vcn = {
        compartment_id = "Network"
        vcn_id     = "exa-vcn"
        display_name     = "Default Route Table for exa-vcn"
        ### gateway_route_table for #phoenix_exa-vcn_Default-Route-Table-for-exa-vcn# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_exa-vcn_Default-Route-Table-for-exa-vcn# ####
        ]
        route_rules_sgw = [
    ####ADD_NEW_SGW_RULES #phoenix_exa-vcn_Default-Route-Table-for-exa-vcn# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_exa-vcn_Default-Route-Table-for-exa-vcn# ####
        ]
        route_rules_drg = [
    ####ADD_NEW_DRG_RULES #phoenix_exa-vcn_Default-Route-Table-for-exa-vcn# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_exa-vcn_Default-Route-Table-for-exa-vcn# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_exa-vcn_Default-Route-Table-for-exa-vcn# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_exa-vcn_Default-Route-Table-for-exa-vcn# #
##Add New Default Route Tables for phoenix here##
}