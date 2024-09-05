# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# SDDCs
# SDDC - tfvars
# Allowed Values:
# vcn_name must be the name of the VCN as in OCI
# vlan_name must be the name of the vlan as in OCI
# subnet_id can be the ocid of the subnet or the name as in OCI
# compartment_id and network_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "AppDev--Prod" where "AppDev" is the parent of "Prod" compartment
# Sample import command for SDDC:
# terraform import "module.sddc[\"<<sddc terraform variable name>>\"].oci_ocvp_sddc.sddc" <<sddc ocid>>
############################
sddcs = {
      SDDC-1--MANAGEMENT =  {
          compartment_id                = "AppDev"
          display_name                  = "SDDC-1"
          initial_cluster_display_name  = "MANAGEMENT"
          availability_domain           =  0
          is_hcx_enabled                = "true"
          vmware_software_version       = "7.0 update 3"
          initial_commitment            = "HOUR"
          initial_host_shape_name       = "BM.Standard3.64"
          management_datastore          = ["AppDev@management_cluster_block"]
          workload_datastore            = ["AppDev@workload_cluster_block"]
          initial_host_ocpu_count       = "16"
          esxi_hosts_count              = 3
          instance_display_name_prefix  = "mgmt"
          is_shielded_instance_enabled  = "false"
          ssh_authorized_keys           = "SDDC-1-key"
          network_compartment_id        = "Network"
          vcn_name                      = "sddc-depoyment-vcn"
          provisioning_subnet_id        = "snet-sddc-mgmt"
          nsx_edge_uplink1vlan_id       = "sddc_nsxedgeuplink1_vlan"
          nsx_edge_uplink2vlan_id       = "sddc_nsxedgeuplink2_vlan"
          nsx_edge_vtep_vlan_id         = "sddc_nsxedgevtep_vlan"
          nsx_vtep_vlan_id              = "sddc_nsxvtep_vlan"
          vmotion_vlan_id               = "sddc_vmotion_vlan"
          vsan_vlan_id                  = "sddc_vsan_vlan"
          vsphere_vlan_id               = "sddc_vsphere_vlan"
          hcx_vlan_id                   = "sddc_hcx_vlan"
          replication_vlan_id           = "sddc_replication_vlan"
          provisioning_vlan_id          = "sddc_provisioning_vlan"
          workload_network_cidr         = "192.168.16.0/24"
    },
##Add New SDDCs for phoenix here##
}