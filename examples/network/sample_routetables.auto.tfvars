# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Network
# Major Objects - Route Table - tfvars
# Allowed Values:
# vcn_id can be the ocid or the key of vcns (map)
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network-root-cpt--Network" where "Network-root-cpt" is the parent of "Network" compartment
# Sample import command for Route Table:
# terraform import "module.route-tables[\"<<route_tables terraform variable name>>\"].oci_core_route_table.route_table" <<route table ocid>>
############################
route_tables = {
  # Route Table map #
  # Start of #phoenix_fwl-vcn_fwl-mgmt-rt# #
    fwl-vcn_fwl-mgmt-rt = {
        compartment_id = "Network"
        vcn_id     = "fwl-vcn"
        display_name     = "fwl-mgmt-rt"
        ### gateway_route_table for #phoenix_fwl-vcn_fwl-mgmt-rt# ##
        route_rules_igw = [
                ## Start Route Rule phoenix_fwl-vcn_fwl-mgmt-rt_fwl-vcn_igw_0.0.0.0/0
            {
                  network_entity_id = "fwl-vcn_igw"
                  description       = ""
                  destination       = "0.0.0.0/0"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_fwl-vcn_fwl-mgmt-rt_fwl-vcn_igw_0.0.0.0/0
####ADD_NEW_IGW_RULES #phoenix_fwl-vcn_fwl-mgmt-rt# ####
        ]
        route_rules_sgw = [
                ## Start Route Rule phoenix_fwl-vcn_fwl-mgmt-rt_fwl-vcn_fwl-vcn_sgw_objectstorage
            {
                  network_entity_id = "fwl-vcn_fwl-vcn_sgw"
                  description       = ""
                  destination       = "objectstorage"
                  destination_type  = "SERVICE_CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_fwl-vcn_fwl-mgmt-rt_fwl-vcn_fwl-vcn_sgw_objectstorage
####ADD_NEW_SGW_RULES #phoenix_fwl-vcn_fwl-mgmt-rt# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_fwl-vcn_fwl-mgmt-rt# ####
        ]
        route_rules_drg = [
                ## Start Route Rule phoenix_fwl-vcn_fwl-mgmt-rt_DRG_10.0.0.0/8
            {
                  network_entity_id = "DRG"
                  description       = ""
                  destination       = "10.0.0.0/8"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_fwl-vcn_fwl-mgmt-rt_DRG_10.0.0.0/8
####ADD_NEW_DRG_RULES #phoenix_fwl-vcn_fwl-mgmt-rt# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_fwl-vcn_fwl-mgmt-rt# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_fwl-vcn_fwl-mgmt-rt# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_fwl-vcn_fwl-mgmt-rt# #
  # Start of #phoenix_fwl-vcn_fwl-pub-rt# #
    fwl-vcn_fwl-pub-rt = {
        compartment_id = "Network"
        vcn_id     = "fwl-vcn"
        display_name     = "fwl-pub-rt"
        ### gateway_route_table for #phoenix_fwl-vcn_fwl-pub-rt# ##
        route_rules_igw = [
                ## Start Route Rule phoenix_fwl-vcn_fwl-pub-rt_fwl-vcn_igw_0.0.0.0/0
            {
                  network_entity_id = "fwl-vcn_igw"
                  description       = ""
                  destination       = "0.0.0.0/0"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_fwl-vcn_fwl-pub-rt_fwl-vcn_igw_0.0.0.0/0
####ADD_NEW_IGW_RULES #phoenix_fwl-vcn_fwl-pub-rt# ####
        ]
        route_rules_sgw = [
                ## Start Route Rule phoenix_fwl-vcn_fwl-pub-rt_fwl-vcn_fwl-vcn_sgw_objectstorage
            {
                  network_entity_id = "fwl-vcn_fwl-vcn_sgw"
                  description       = ""
                  destination       = "objectstorage"
                  destination_type  = "SERVICE_CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_fwl-vcn_fwl-pub-rt_fwl-vcn_fwl-vcn_sgw_objectstorage
####ADD_NEW_SGW_RULES #phoenix_fwl-vcn_fwl-pub-rt# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_fwl-vcn_fwl-pub-rt# ####
        ]
        route_rules_drg = [
                ## Start Route Rule phoenix_fwl-vcn_fwl-pub-rt_DRG_10.0.0.0/8
            {
                  network_entity_id = "DRG"
                  description       = ""
                  destination       = "10.0.0.0/8"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_fwl-vcn_fwl-pub-rt_DRG_10.0.0.0/8
####ADD_NEW_DRG_RULES #phoenix_fwl-vcn_fwl-pub-rt# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_fwl-vcn_fwl-pub-rt# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_fwl-vcn_fwl-pub-rt# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_fwl-vcn_fwl-pub-rt# #
  # Start of #phoenix_fwl-vcn_fwl-priv-rt# #
    fwl-vcn_fwl-priv-rt = {
        compartment_id = "Network"
        vcn_id     = "fwl-vcn"
        display_name     = "fwl-priv-rt"
        ### gateway_route_table for #phoenix_fwl-vcn_fwl-priv-rt# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_fwl-vcn_fwl-priv-rt# ####
        ]
        route_rules_sgw = [
                ## Start Route Rule phoenix_fwl-vcn_fwl-priv-rt_fwl-vcn_fwl-vcn_sgw_objectstorage
            {
                  network_entity_id = "fwl-vcn_fwl-vcn_sgw"
                  description       = ""
                  destination       = "objectstorage"
                  destination_type  = "SERVICE_CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_fwl-vcn_fwl-priv-rt_fwl-vcn_fwl-vcn_sgw_objectstorage
####ADD_NEW_SGW_RULES #phoenix_fwl-vcn_fwl-priv-rt# ####
        ]
        route_rules_ngw = [
                ## Start Route Rule phoenix_fwl-vcn_fwl-priv-rt_fwl-vcn_fwl-vcn_ngw_0.0.0.0/0
            {
                  network_entity_id = "fwl-vcn_fwl-vcn_ngw"
                  description       = ""
                  destination       = "0.0.0.0/0"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_fwl-vcn_fwl-priv-rt_fwl-vcn_fwl-vcn_ngw_0.0.0.0/0
####ADD_NEW_NGW_RULES #phoenix_fwl-vcn_fwl-priv-rt# ####
        ]
        route_rules_drg = [
                ## Start Route Rule phoenix_fwl-vcn_fwl-priv-rt_DRG_10.0.0.0/8
            {
                  network_entity_id = "DRG"
                  description       = ""
                  destination       = "10.0.0.0/8"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_fwl-vcn_fwl-priv-rt_DRG_10.0.0.0/8
####ADD_NEW_DRG_RULES #phoenix_fwl-vcn_fwl-priv-rt# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_fwl-vcn_fwl-priv-rt# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_fwl-vcn_fwl-priv-rt# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_fwl-vcn_fwl-priv-rt# #
  # Start of #phoenix_fwl-vcn_fwl-ha-rt# #
    fwl-vcn_fwl-ha-rt = {
        compartment_id = "Network"
        vcn_id     = "fwl-vcn"
        display_name     = "fwl-ha-rt"
        ### gateway_route_table for #phoenix_fwl-vcn_fwl-ha-rt# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_fwl-vcn_fwl-ha-rt# ####
        ]
        route_rules_sgw = [
    ####ADD_NEW_SGW_RULES #phoenix_fwl-vcn_fwl-ha-rt# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_fwl-vcn_fwl-ha-rt# ####
        ]
        route_rules_drg = [
    ####ADD_NEW_DRG_RULES #phoenix_fwl-vcn_fwl-ha-rt# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_fwl-vcn_fwl-ha-rt# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_fwl-vcn_fwl-ha-rt# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_fwl-vcn_fwl-ha-rt# #
  # Start of #phoenix_prod-vcn_prod-web-rt# #
    prod-vcn_prod-web-rt = {
        compartment_id = "Network"
        vcn_id     = "prod-vcn"
        display_name     = "prod-web-rt"
        ### gateway_route_table for #phoenix_prod-vcn_prod-web-rt# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_prod-vcn_prod-web-rt# ####
        ]
        route_rules_sgw = [
                ## Start Route Rule phoenix_prod-vcn_prod-web-rt_prod-vcn_prod-vcn_sgw_all
            {
                  network_entity_id = "prod-vcn_prod-vcn_sgw"
                  description       = ""
                  destination       = "all"
                  destination_type  = "SERVICE_CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_prod-vcn_prod-web-rt_prod-vcn_prod-vcn_sgw_all
####ADD_NEW_SGW_RULES #phoenix_prod-vcn_prod-web-rt# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_prod-vcn_prod-web-rt# ####
        ]
        route_rules_drg = [
                ## Start Route Rule phoenix_prod-vcn_prod-web-rt_DRG_10.0.0.0/8
            {
                  network_entity_id = "DRG"
                  description       = ""
                  destination       = "10.0.0.0/8"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_prod-vcn_prod-web-rt_DRG_10.0.0.0/8
####ADD_NEW_DRG_RULES #phoenix_prod-vcn_prod-web-rt# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_prod-vcn_prod-web-rt# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_prod-vcn_prod-web-rt# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_prod-vcn_prod-web-rt# #
  # Start of #phoenix_prod-vcn_prod-app-rt# #
    prod-vcn_prod-app-rt = {
        compartment_id = "Network"
        vcn_id     = "prod-vcn"
        display_name     = "prod-app-rt"
        ### gateway_route_table for #phoenix_prod-vcn_prod-app-rt# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_prod-vcn_prod-app-rt# ####
        ]
        route_rules_sgw = [
                ## Start Route Rule phoenix_prod-vcn_prod-app-rt_prod-vcn_prod-vcn_sgw_all
            {
                  network_entity_id = "prod-vcn_prod-vcn_sgw"
                  description       = ""
                  destination       = "all"
                  destination_type  = "SERVICE_CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_prod-vcn_prod-app-rt_prod-vcn_prod-vcn_sgw_all
####ADD_NEW_SGW_RULES #phoenix_prod-vcn_prod-app-rt# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_prod-vcn_prod-app-rt# ####
        ]
        route_rules_drg = [
                ## Start Route Rule phoenix_prod-vcn_prod-app-rt_DRG_10.0.0.0/8
            {
                  network_entity_id = "DRG"
                  description       = ""
                  destination       = "10.0.0.0/8"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_prod-vcn_prod-app-rt_DRG_10.0.0.0/8
####ADD_NEW_DRG_RULES #phoenix_prod-vcn_prod-app-rt# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_prod-vcn_prod-app-rt# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_prod-vcn_prod-app-rt# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_prod-vcn_prod-app-rt# #
  # Start of #phoenix_prod-vcn_prod-db-rt# #
    prod-vcn_prod-db-rt = {
        compartment_id = "Network"
        vcn_id     = "prod-vcn"
        display_name     = "prod-db-rt"
        ### gateway_route_table for #phoenix_prod-vcn_prod-db-rt# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_prod-vcn_prod-db-rt# ####
        ]
        route_rules_sgw = [
                ## Start Route Rule phoenix_prod-vcn_prod-db-rt_prod-vcn_prod-vcn_sgw_all
            {
                  network_entity_id = "prod-vcn_prod-vcn_sgw"
                  description       = ""
                  destination       = "all"
                  destination_type  = "SERVICE_CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_prod-vcn_prod-db-rt_prod-vcn_prod-vcn_sgw_all
####ADD_NEW_SGW_RULES #phoenix_prod-vcn_prod-db-rt# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_prod-vcn_prod-db-rt# ####
        ]
        route_rules_drg = [
                ## Start Route Rule phoenix_prod-vcn_prod-db-rt_DRG_10.0.0.0/8
            {
                  network_entity_id = "DRG"
                  description       = ""
                  destination       = "10.0.0.0/8"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_prod-vcn_prod-db-rt_DRG_10.0.0.0/8
####ADD_NEW_DRG_RULES #phoenix_prod-vcn_prod-db-rt# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_prod-vcn_prod-db-rt# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_prod-vcn_prod-db-rt# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_prod-vcn_prod-db-rt# #
  # Start of #phoenix_nonprod-vcn_nonprod-web-rt# #
    nonprod-vcn_nonprod-web-rt = {
        compartment_id = "Network"
        vcn_id     = "nonprod-vcn"
        display_name     = "nonprod-web-rt"
        ### gateway_route_table for #phoenix_nonprod-vcn_nonprod-web-rt# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_nonprod-vcn_nonprod-web-rt# ####
        ]
        route_rules_sgw = [
                ## Start Route Rule phoenix_nonprod-vcn_nonprod-web-rt_nonprod-vcn_nonprod-vcn_sgw_all
            {
                  network_entity_id = "nonprod-vcn_nonprod-vcn_sgw"
                  description       = ""
                  destination       = "all"
                  destination_type  = "SERVICE_CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_nonprod-vcn_nonprod-web-rt_nonprod-vcn_nonprod-vcn_sgw_all
####ADD_NEW_SGW_RULES #phoenix_nonprod-vcn_nonprod-web-rt# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_nonprod-vcn_nonprod-web-rt# ####
        ]
        route_rules_drg = [
                ## Start Route Rule phoenix_nonprod-vcn_nonprod-web-rt_DRG_10.0.0.0/8
            {
                  network_entity_id = "DRG"
                  description       = ""
                  destination       = "10.0.0.0/8"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_nonprod-vcn_nonprod-web-rt_DRG_10.0.0.0/8
####ADD_NEW_DRG_RULES #phoenix_nonprod-vcn_nonprod-web-rt# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_nonprod-vcn_nonprod-web-rt# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_nonprod-vcn_nonprod-web-rt# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_nonprod-vcn_nonprod-web-rt# #
  # Start of #phoenix_nonprod-vcn_nonprod-app-rt# #
    nonprod-vcn_nonprod-app-rt = {
        compartment_id = "Network"
        vcn_id     = "nonprod-vcn"
        display_name     = "nonprod-app-rt"
        ### gateway_route_table for #phoenix_nonprod-vcn_nonprod-app-rt# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_nonprod-vcn_nonprod-app-rt# ####
        ]
        route_rules_sgw = [
                ## Start Route Rule phoenix_nonprod-vcn_nonprod-app-rt_nonprod-vcn_nonprod-vcn_sgw_all
            {
                  network_entity_id = "nonprod-vcn_nonprod-vcn_sgw"
                  description       = ""
                  destination       = "all"
                  destination_type  = "SERVICE_CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_nonprod-vcn_nonprod-app-rt_nonprod-vcn_nonprod-vcn_sgw_all
####ADD_NEW_SGW_RULES #phoenix_nonprod-vcn_nonprod-app-rt# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_nonprod-vcn_nonprod-app-rt# ####
        ]
        route_rules_drg = [
                ## Start Route Rule phoenix_nonprod-vcn_nonprod-app-rt_DRG_10.0.0.0/8
            {
                  network_entity_id = "DRG"
                  description       = ""
                  destination       = "10.0.0.0/8"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_nonprod-vcn_nonprod-app-rt_DRG_10.0.0.0/8
####ADD_NEW_DRG_RULES #phoenix_nonprod-vcn_nonprod-app-rt# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_nonprod-vcn_nonprod-app-rt# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_nonprod-vcn_nonprod-app-rt# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_nonprod-vcn_nonprod-app-rt# #
  # Start of #phoenix_nonprod-vcn_nonprod-db-rt# #
    nonprod-vcn_nonprod-db-rt = {
        compartment_id = "Network"
        vcn_id     = "nonprod-vcn"
        display_name     = "nonprod-db-rt"
        ### gateway_route_table for #phoenix_nonprod-vcn_nonprod-db-rt# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_nonprod-vcn_nonprod-db-rt# ####
        ]
        route_rules_sgw = [
                ## Start Route Rule phoenix_nonprod-vcn_nonprod-db-rt_nonprod-vcn_nonprod-vcn_sgw_all
            {
                  network_entity_id = "nonprod-vcn_nonprod-vcn_sgw"
                  description       = ""
                  destination       = "all"
                  destination_type  = "SERVICE_CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_nonprod-vcn_nonprod-db-rt_nonprod-vcn_nonprod-vcn_sgw_all
####ADD_NEW_SGW_RULES #phoenix_nonprod-vcn_nonprod-db-rt# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_nonprod-vcn_nonprod-db-rt# ####
        ]
        route_rules_drg = [
                ## Start Route Rule phoenix_nonprod-vcn_nonprod-db-rt_DRG_10.0.0.0/8
            {
                  network_entity_id = "DRG"
                  description       = ""
                  destination       = "10.0.0.0/8"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_nonprod-vcn_nonprod-db-rt_DRG_10.0.0.0/8
####ADD_NEW_DRG_RULES #phoenix_nonprod-vcn_nonprod-db-rt# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_nonprod-vcn_nonprod-db-rt# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_nonprod-vcn_nonprod-db-rt# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_nonprod-vcn_nonprod-db-rt# #
  # Start of #phoenix_exa-vcn_exa-clnt-rt# #
    exa-vcn_exa-clnt-rt = {
        compartment_id = "Network"
        vcn_id     = "exa-vcn"
        display_name     = "exa-clnt-rt"
        ### gateway_route_table for #phoenix_exa-vcn_exa-clnt-rt# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_exa-vcn_exa-clnt-rt# ####
        ]
        route_rules_sgw = [
                ## Start Route Rule phoenix_exa-vcn_exa-clnt-rt_exa-vcn_exa-vcn_sgw_all
            {
                  network_entity_id = "exa-vcn_exa-vcn_sgw"
                  description       = ""
                  destination       = "all"
                  destination_type  = "SERVICE_CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_exa-vcn_exa-clnt-rt_exa-vcn_exa-vcn_sgw_all
####ADD_NEW_SGW_RULES #phoenix_exa-vcn_exa-clnt-rt# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_exa-vcn_exa-clnt-rt# ####
        ]
        route_rules_drg = [
                ## Start Route Rule phoenix_exa-vcn_exa-clnt-rt_DRG_10.0.0.0/8
            {
                  network_entity_id = "DRG"
                  description       = ""
                  destination       = "10.0.0.0/8"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_exa-vcn_exa-clnt-rt_DRG_10.0.0.0/8
####ADD_NEW_DRG_RULES #phoenix_exa-vcn_exa-clnt-rt# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_exa-vcn_exa-clnt-rt# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_exa-vcn_exa-clnt-rt# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_exa-vcn_exa-clnt-rt# #
  # Start of #phoenix_exa-vcn_exa-bkup-rt# #
    exa-vcn_exa-bkup-rt = {
        compartment_id = "Network"
        vcn_id     = "exa-vcn"
        display_name     = "exa-bkup-rt"
        ### gateway_route_table for #phoenix_exa-vcn_exa-bkup-rt# ##
        route_rules_igw = [
    ####ADD_NEW_IGW_RULES #phoenix_exa-vcn_exa-bkup-rt# ####
        ]
        route_rules_sgw = [
                ## Start Route Rule phoenix_exa-vcn_exa-bkup-rt_exa-vcn_exa-vcn_sgw_all
            {
                  network_entity_id = "exa-vcn_exa-vcn_sgw"
                  description       = ""
                  destination       = "all"
                  destination_type  = "SERVICE_CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_exa-vcn_exa-bkup-rt_exa-vcn_exa-vcn_sgw_all
####ADD_NEW_SGW_RULES #phoenix_exa-vcn_exa-bkup-rt# ####
        ]
        route_rules_ngw = [
    ####ADD_NEW_NGW_RULES #phoenix_exa-vcn_exa-bkup-rt# ####
        ]
        route_rules_drg = [
                ## Start Route Rule phoenix_exa-vcn_exa-bkup-rt_DRG_10.0.0.0/8
            {
                  network_entity_id = "DRG"
                  description       = ""
                  destination       = "10.0.0.0/8"
                  destination_type  = "CIDR_BLOCK"
                 },
            ## End Route Rule phoenix_exa-vcn_exa-bkup-rt_DRG_10.0.0.0/8
####ADD_NEW_DRG_RULES #phoenix_exa-vcn_exa-bkup-rt# ####
        ]
        route_rules_lpg = [
    ####ADD_NEW_LPG_RULES #phoenix_exa-vcn_exa-bkup-rt# ####
        ]
        route_rules_ip = [
    ####ADD_NEW_IP_RULES #phoenix_exa-vcn_exa-bkup-rt# ####
        ]
        defined_tags = {}
        freeform_tags = {}
      },
  # End of #phoenix_exa-vcn_exa-bkup-rt# #
##Add New Route Tables for phoenix here##
##Add New Route Tables for phoenix here##
}