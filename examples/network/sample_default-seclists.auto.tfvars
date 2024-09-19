# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Network
# Major Objects - Default Security List - tfvars
# Sample import command for Default Security List:
# terraform import "module.default-security-lists[\"<<default_seclists terraform variable name>>\"].oci_core_default_security_list.default_security_list" <<default security list ocid>>
############################
default_seclists = {
  # Seclist map #
  # Start of #phoenix_fwl-vcn_Default-Security-List-for-fwl-vcn# #
  fwl-vcn_Default-Security-List-for-fwl-vcn = {
        compartment_id = "Network"
        vcn_id     = "fwl-vcn"
        display_name     = "Default Security List for fwl-vcn"
        ingress_sec_rules = [
             {  #fwl-vcn_Default-Security-List-for-fwl-vcn_0.0.0.0/0#
                protocol = "1"
                source = "0.0.0.0/0"
                options = {
                    icmp = []
                }
             },
             {  #fwl-vcn_Default-Security-List-for-fwl-vcn_0.0.0.0/0#
                protocol = "6"
                source = "0.0.0.0/0"
                options = {
                    tcp= [{
                        destination_port_range_max = "22"
                        destination_port_range_min = "22"
                    }]
                }
             },
             {  #fwl-vcn_Default-Security-List-for-fwl-vcn_10.110.0.0/16#
                protocol = "1"
                source = "10.110.0.0/16"
                options = {
                    icmp = []
                }
             },
####ADD_NEW_INGRESS_SEC_RULES #phoenix_fwl-vcn_Default-Security-List-for-fwl-vcn# ####
        ]
        egress_sec_rules = [
             {
                protocol = "all"
                destination = "0.0.0.0/0"
                options = {
                    all = []
                }
             },
####ADD_NEW_EGRESS_SEC_RULES #phoenix_fwl-vcn_Default-Security-List-for-fwl-vcn# ####
        ]
      },
  # End of #phoenix_fwl-vcn_Default-Security-List-for-fwl-vcn# #
  # Start of #phoenix_prod-vcn_Default-Security-List-for-prod-vcn# #
  prod-vcn_Default-Security-List-for-prod-vcn = {
        compartment_id = "Network"
        vcn_id     = "prod-vcn"
        display_name     = "Default Security List for prod-vcn"
        ingress_sec_rules = [
             {  #prod-vcn_Default-Security-List-for-prod-vcn_0.0.0.0/0#
                protocol = "1"
                source = "0.0.0.0/0"
                options = {
                    icmp = []
                }
             },
             {  #prod-vcn_Default-Security-List-for-prod-vcn_0.0.0.0/0#
                protocol = "6"
                source = "0.0.0.0/0"
                options = {
                    tcp= [{
                        destination_port_range_max = "22"
                        destination_port_range_min = "22"
                    }]
                }
             },
             {  #prod-vcn_Default-Security-List-for-prod-vcn_10.111.0.0/16#
                protocol = "1"
                source = "10.111.0.0/16"
                options = {
                    icmp = []
                }
             },
####ADD_NEW_INGRESS_SEC_RULES #phoenix_prod-vcn_Default-Security-List-for-prod-vcn# ####
        ]
        egress_sec_rules = [
             {
                protocol = "all"
                destination = "0.0.0.0/0"
                options = {
                    all = []
                }
             },
####ADD_NEW_EGRESS_SEC_RULES #phoenix_prod-vcn_Default-Security-List-for-prod-vcn# ####
        ]
      },
  # End of #phoenix_prod-vcn_Default-Security-List-for-prod-vcn# #
  # Start of #phoenix_nonprod-vcn_Default-Security-List-for-nonprod-vcn# #
  nonprod-vcn_Default-Security-List-for-nonprod-vcn = {
        compartment_id = "Network"
        vcn_id     = "nonprod-vcn"
        display_name     = "Default Security List for nonprod-vcn"
        ingress_sec_rules = [
             {  #nonprod-vcn_Default-Security-List-for-nonprod-vcn_0.0.0.0/0#
                protocol = "1"
                source = "0.0.0.0/0"
                options = {
                    icmp = []
                }
             },
             {  #nonprod-vcn_Default-Security-List-for-nonprod-vcn_0.0.0.0/0#
                protocol = "6"
                source = "0.0.0.0/0"
                options = {
                    tcp= [{
                        destination_port_range_max = "22"
                        destination_port_range_min = "22"
                    }]
                }
             },
             {  #nonprod-vcn_Default-Security-List-for-nonprod-vcn_10.112.0.0/16#
                protocol = "1"
                source = "10.112.0.0/16"
                options = {
                    icmp = []
                }
             },
####ADD_NEW_INGRESS_SEC_RULES #phoenix_nonprod-vcn_Default-Security-List-for-nonprod-vcn# ####
        ]
        egress_sec_rules = [
             {
                protocol = "all"
                destination = "0.0.0.0/0"
                options = {
                    all = []
                }
             },
####ADD_NEW_EGRESS_SEC_RULES #phoenix_nonprod-vcn_Default-Security-List-for-nonprod-vcn# ####
        ]
      },
  # End of #phoenix_nonprod-vcn_Default-Security-List-for-nonprod-vcn# #
  # Start of #phoenix_exa-vcn_Default-Security-List-for-exa-vcn# #
  exa-vcn_Default-Security-List-for-exa-vcn = {
        compartment_id = "Network"
        vcn_id     = "exa-vcn"
        display_name     = "Default Security List for exa-vcn"
        ingress_sec_rules = [
             {  #exa-vcn_Default-Security-List-for-exa-vcn_0.0.0.0/0#
                protocol = "1"
                source = "0.0.0.0/0"
                options = {
                    icmp = []
                }
             },
             {  #exa-vcn_Default-Security-List-for-exa-vcn_0.0.0.0/0#
                protocol = "6"
                source = "0.0.0.0/0"
                options = {
                    tcp= [{
                        destination_port_range_max = "22"
                        destination_port_range_min = "22"
                    }]
                }
             },
             {  #exa-vcn_Default-Security-List-for-exa-vcn_10.113.0.0/24#
                protocol = "1"
                source = "10.113.0.0/24"
                options = {
                    icmp = []
                }
             },
####ADD_NEW_INGRESS_SEC_RULES #phoenix_exa-vcn_Default-Security-List-for-exa-vcn# ####
        ]
        egress_sec_rules = [
             {
                protocol = "all"
                destination = "0.0.0.0/0"
                options = {
                    all = []
                }
             },
####ADD_NEW_EGRESS_SEC_RULES #phoenix_exa-vcn_Default-Security-List-for-exa-vcn# ####
        ]
      },
  # End of #phoenix_exa-vcn_Default-Security-List-for-exa-vcn# #
##Add New Default Seclists for phoenix here##
}