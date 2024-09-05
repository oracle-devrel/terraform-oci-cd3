# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Network
# Major Objects - VCNs, IGW, NGW, SGW, LPG, DRG - tfvars
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network--Prod" where "Network" is the parent of "Prod" compartment
# Sample import command for VCN:
# terraform import "module.vcns[\"<<vcns terraform variable name>>\"].oci_core_vcn.vcn" <<vcn ocid>>
############################
vcns = {
  fwl-vcn = {
        compartment_id = "Network"
        cidr_blocks      = ["10.110.0.0/16"]
        display_name     = "fwl-vcn"
        dns_label      = "fwlvcn"
      },
  prod-vcn = {
        compartment_id = "Network"
        cidr_blocks      = ["10.111.0.0/16"]
        display_name     = "prod-vcn"
        dns_label      = "prodvcn"
      },
  nonprod-vcn = {
        compartment_id = "Network"
        cidr_blocks      = ["10.112.0.0/16"]
        display_name     = "nonprod-vcn"
        dns_label      = "nonprodvcn"
      },
  exa-vcn = {
        compartment_id = "Network"
        cidr_blocks      = ["10.113.0.0/24"]
        display_name     = "exa-vcn"
        dns_label      = "exavcn"
      },
}

############################
# Network
# Major Objects - IGW - tfvars
# Allowed Values:
# vcn_id can be the ocid or the key of vcns (map)
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network--Prod" where "Network" is the parent of "Prod" compartment
# Sample import command for IGW:
# terraform import "module.igws[\"<<igws terraform variable name>>\"].oci_core_internet_gateway.internet_gateway" <<igw ocid>>
############################
igws = {
  fwl-vcn_igw = {
        compartment_id = "Network"
        vcn_id     = "fwl-vcn"
        igw_name   = "igw"
      },
  prod-vcn_prod-vcn_igw = {
        compartment_id = "Network"
        vcn_id     = "prod-vcn"
        igw_name   = "prod-vcn_igw"
      },
}

############################
# Network
# Major Objects - NGW - tfvars
# Allowed Values:
# vcn_id can be the ocid or the key of vcns (map)
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network--Prod" where "Network" is the parent of "Prod" compartment
# Sample import command for NGW:
# terraform import "module.ngws[\"<<ngws terraform variable name>>\"].oci_core_nat_gateway.nat_gateway" <<nat gateway ocid>>
############################
ngws = {
  fwl-vcn_fwl-vcn_ngw = {
        compartment_id = "Network"
        vcn_id     = "fwl-vcn"
        ngw_name     = "fwl-vcn_ngw"
      },
}

############################
# Network
# Major Objects - SGW - tfvars
# Allowed Values:
# vcn_id can be the ocid or the key of vcns (map)
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network--Prod" where "Network" is the parent of "Prod" compartment
# Sample import command for SGW:
# terraform import "module.sgws[\"<<sgws terraform variable name>>\"].oci_core_service_gateway.service_gateway" <<sgw ocid>>
############################
sgws = {
   fwl-vcn_fwl-vcn_sgw = {
        compartment_id = "Network"
        vcn_id     = "fwl-vcn"
        sgw_name     = "fwl-vcn_sgw"
        # Possible values for service: "", "all", "objectstorage"
        service = ""         
      },
   prod-vcn_prod-vcn_sgw = {
        compartment_id = "Network"
        vcn_id     = "prod-vcn"
        sgw_name     = "prod-vcn_sgw"
        # Possible values for service: "", "all", "objectstorage"
        service = ""         
      },
   nonprod-vcn_nonprod-vcn_sgw = {
        compartment_id = "Network"
        vcn_id     = "nonprod-vcn"
        sgw_name     = "nonprod-vcn_sgw"
        # Possible values for service: "", "all", "objectstorage"
        service = ""         
      },
   exa-vcn_exa-vcn_sgw = {
        compartment_id = "Network"
        vcn_id     = "exa-vcn"
        sgw_name     = "exa-vcn_sgw"
        # Possible values for service: "", "all", "objectstorage"
        service = ""         
      },
}

############################
# Network
# Major Objects - LPG - tfvars
# Allowed Values:
# vcn_id can be the ocid or the key of vcns (map)
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network--Prod" where "Network" is the parent of "Prod" compartment
# Sample import command for LPG:
# terraform import "module.hub-lpgs[\"<<lpgs terraform variable name>>\"].oci_core_local_peering_gateway.local_peering_gateway" <<lpg ocid>>
# terraform import "module.spoke-lpgs[\"<<lpgs terraform variable name>>\"].oci_core_local_peering_gateway.local_peering_gateway" <<lpg ocid>>
# terraform import "module.peer-lpgs[\"<<lpgs terraform variable name>>\"].oci_core_local_peering_gateway.local_peering_gateway" <<lpg ocid>>
# terraform import "module.none-lpgs[\"<<lpgs terraform variable name>>\"].oci_core_local_peering_gateway.local_peering_gateway" <<lpg ocid>>
# terraform import "module.exported-lpgs[\"<<lpgs terraform variable name>>\"].oci_core_local_peering_gateway.local_peering_gateway" <<lpg ocid>>
############################
lpgs = {
    hub-lpgs = {
                },
    spoke-lpgs = {
                },
    peer-lpgs = {
                },
    none-lpgs  = {
                    fwl-vcn_fwl-vcn_lpg0 = {
                    compartment_id = "Network"
                    vcn_id     = "fwl-vcn"
                    lpg_name   = "fwl-vcn_lpg0"
                    route_table_id = ""
                    peer_id = "##peer_id for lpg fwl-vcn_fwl-vcn_lpg0##"
                    defined_tags = {}
                    freeform_tags = {}
             },
                },
    exported-lpgs = {
                },
}

############################
# Network
# Major Objects - DRG - tfvars
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Network--Prod" where "Network" is the parent of "Prod" compartment
# Sample import command for DRG:
# terraform import "module.drgs[\"<<drgs terraform variable name>>\"].oci_core_drg.drg" <<drg ocid>>
############################
drgs = {
   DRG = {
        compartment_id = "Network"
        display_name     = "DRG"
      },
}

############################
# Network
# Major Objects - DRG Attachment - tfvars
# Allowed Values:
# vcn_id can be the ocid or the key of vcns (map)
# Sample import command for DRG Attachment:
# terraform import "module.drg-attachments[\"<<drg_attachments terraform variable name>>\"].oci_core_drg_attachment.drg_attachment" <<drg attachment ocid>>
############################
drg_attachments = {
   DRG_fwl-vcn_attach = {
        drg_id = "DRG"
        display_name = "DRG_fwl-vcn_attach"
        #DRG v2
        drg_route_table_id = "DRG_rt-from-fwl"
        #Required
        network_details = [{
        id = "fwl-vcn"
        type = "VCN"
        vcn_route_table_id =  ""
        }]
        #set DRGv1 params to null
        route_table_id =""
        vcn_id = ""
        defined_tags = {}
        freeform_tags = {}
        },
   DRG_prod-vcn_attach = {
        drg_id = "DRG"
        display_name = "DRG_prod-vcn_attach"
        #DRG v2
        drg_route_table_id = "DRG_rt-to-fwl"
        #Required
        network_details = [{
        id = "prod-vcn"
        type = "VCN"
        vcn_route_table_id =  ""
        }]
        #set DRGv1 params to null
        route_table_id =""
        vcn_id = ""
        defined_tags = {}
        freeform_tags = {}
        },
   DRG_nonprod-vcn_attach = {
        drg_id = "DRG"
        display_name = "DRG_nonprod-vcn_attach"
        #DRG v2
        drg_route_table_id = "DRG_rt-to-fwl"
        #Required
        network_details = [{
        id = "nonprod-vcn"
        type = "VCN"
        vcn_route_table_id =  ""
        }]
        #set DRGv1 params to null
        route_table_id =""
        vcn_id = ""
        defined_tags = {}
        freeform_tags = {}
        },
   DRG_exa-vcn_attach = {
        drg_id = "DRG"
        display_name = "DRG_exa-vcn_attach"
        #DRG v2
        drg_route_table_id = "DRG_rt-to-fwl"
        #Required
        network_details = [{
        id = "exa-vcn"
        type = "VCN"
        vcn_route_table_id =  ""
        }]
        #set DRGv1 params to null
        route_table_id =""
        vcn_id = ""
        defined_tags = {}
        freeform_tags = {}
        },
}