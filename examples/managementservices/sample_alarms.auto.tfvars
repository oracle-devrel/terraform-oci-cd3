# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# ManagementServices
# Alarms - tfvars
# Allowed Values:
# compartment_id and metric_compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Security--Prod" where "Security" is the parent of "Prod" compartment
############################
alarms = {
  Network_vpn-status-alarm = {
    #Required
        compartment_id = "Network"
        destinations = ["NetworkTopic"]
        alarm_name = "vpn-status-alarm"
        is_enabled = true
        metric_compartment_id = "Network"
        namespace = "oci_vpn"
        query = "TunnelState[1m].mean() == 0"
        severity = "CRITICAL"
        message_format = "PRETTY_JSON"
        trigger_delay_minutes = "PT5M"
    },
   Network_fast-connect-status-alarm = {
    #Required
        compartment_id = "Network"
        destinations = ["NetworkTopic"]
        alarm_name = "fast-connect-status-alarm"
        is_enabled = true
        metric_compartment_id = "Network"
        namespace = "oci_fastconnect"
        query = "ConnectionState[1m].mean() == 0"
        severity = "CRITICAL"
        message_format = "PRETTY_JSON"
        trigger_delay_minutes = "PT5M"
    },
   AppDev_bare-metal-unhealthy-alarm = {
    #Required
        compartment_id = "AppDev"
        destinations = ["ComputeTopic"]
        alarm_name = "bare-metal-unhealthy-alarm"
        is_enabled = true
        metric_compartment_id = "AppDev"
        namespace = "oci_compute_infrastructure_health"
        query = "health_status[1m].count() == 1"
        severity = "CRITICAL"
        message_format = "PRETTY_JSON"
        trigger_delay_minutes = "PT5M"
    },
   AppDev_instance-status-alarm = {
    #Required
        compartment_id = "AppDev"
        destinations = ["ComputeTopic"]
        alarm_name = "instance-status-alarm"
        is_enabled = true
        metric_compartment_id = "AppDev"
        namespace = "oci_compute_infrastructure_health"
        query = "instance_status[1m].count() == 1"
        severity = "CRITICAL"
        message_format = "PRETTY_JSON"
        trigger_delay_minutes = "PT5M"
    },
   AppDev_high-cpu-alarm = {
    #Required
        compartment_id = "AppDev"
        destinations = ["ComputeTopic"]
        alarm_name = "high-cpu-alarm"
        is_enabled = true
        metric_compartment_id = "AppDev"
        namespace = "oci_computeagent"
        query = "CpuUtilization[1m].mean() > 80"
        severity = "CRITICAL"
        message_format = "PRETTY_JSON"
        trigger_delay_minutes = "PT5M"
    },
   AppDev_high-memory-alarm = {
    #Required
        compartment_id = "AppDev"
        destinations = ["ComputeTopic"]
        alarm_name = "high-memory-alarm"
        is_enabled = true
        metric_compartment_id = "AppDev"
        namespace = "oci_computeagent"
        query = "MemoryUtilization[1m].mean() > 80"
        severity = "CRITICAL"
        message_format = "PRETTY_JSON"
        trigger_delay_minutes = "PT5M"
    },
   AppDev_vm-maintenance-alarm = {
    #Required
        compartment_id = "AppDev"
        destinations = ["ComputeTopic"]
        alarm_name = "vm-maintenance-alarm"
        is_enabled = true
        metric_compartment_id = "AppDev"
        namespace = "oci_compute_infrastructure_health"
        query = "maintenance_status[1m].count() == 1"
        severity = "CRITICAL"
        message_format = "PRETTY_JSON"
        trigger_delay_minutes = "PT5M"
    },
   Database_adb-storage-alarm = {
    #Required
        compartment_id = "Database"
        destinations = ["DatabaseTopic"]
        alarm_name = "adb-storage-alarm"
        is_enabled = true
        metric_compartment_id = "Database"
        namespace = "oci_autonomous_database"
        query = "StorageUtilization[1m].mean() > 80"
        severity = "CRITICAL"
        message_format = "PRETTY_JSON"
        trigger_delay_minutes = "PT5M"
    },
   Database_adb-cpu-alarm = {
    #Required
        compartment_id = "Database"
        destinations = ["DatabaseTopic"]
        alarm_name = "adb-cpu-alarm"
        is_enabled = true
        metric_compartment_id = "Database"
        namespace = "oci_autonomous_database"
        query = "CpuUtilization[1m].mean() > 80"
        severity = "CRITICAL"
        message_format = "PRETTY_JSON"
        trigger_delay_minutes = "PT5M"
    },
  }