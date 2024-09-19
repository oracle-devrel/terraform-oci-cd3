# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# ManagementServices
# Service Connector Hub - tfvars
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# Example : compartment_id = "ocid1.compartment.oc1..aaaaaaaahwwiefb56epvdlzfic6ah6jy3xf3c" or compartment_id = "Security--Prod" where "Security" is the parent of "Prod" compartment
# Sample import command for service connectors:
# terraform import "module.service-connectors[\"<<sch terraform variable name>>\"].oci_sch_service_connector.service_connector" <<sch ocid>>
############################
service_connectors= {
  # Service Connector Hub map #
    SCH-01 = {
        compartment_id      = "Security"
        display_name        = "SCH-01"
        description         = "logging to stream"
        source_details = {
                source_kind               = "logging"
                source_log_group_names    = ["AppDev&Audit&all"]
        }
        target_details = {
                target_kind                = "streaming"
                target_stream_name         = {"Security": "log-Stream"}
        }
        defined_tags = {}
        freeform_tags = {}
      },
  SCH-02 = {
        compartment_id      = "Security"
        display_name        = "SCH-02"
        description         = "logging to stream"
        source_details = {
                source_kind               = "logging"
                source_log_group_names    = ["Network&Audit_In_Subcompartment&all"]
        }
        target_details = {
                target_kind                = "streaming"
                target_stream_name         = {"Security": "log-Stream"}
        }
        defined_tags = {}
        freeform_tags = {}
      },
  SCH-03 = {
        compartment_id      = "Security"
        display_name        = "SCH-03"
        description         = "logging to bucket"
        source_details = {
                source_kind               = "logging"
                source_log_group_names    = ["Network&nonprod_vcn&nonprod-web"]
        }
        target_details = {
                target_kind                = "objectStorage"
                target_bucket_name         =  "log-bucket"
                target_object_name_prefix  = ""
        }
        defined_tags = {}
        freeform_tags = {}
      },
  SCH-04 = {
        compartment_id      = "Security"
        display_name        = "SCH-04"
        description         = "logging to notification"
        source_details = {
                source_kind               = "logging"
                source_log_group_names    = ["Network&prod_vcn&all"]
        }
        target_details = {
                target_kind                = "notifications"
                target_topic_name          = {"Security": "log-notify"}
                  enable_formatted_messaging = true
        }
        defined_tags = {}
        freeform_tags = {}
      },
  SCH-06 = {
        compartment_id      = "Security"
        display_name        = "SCH-06"
        description         = "logging to monitoring"
        source_details = {
                source_kind               = "logging"
                source_log_group_names    = ["Network&network-vcn-logs&all"]
        }
        target_details = {
                target_kind               = "monitoring"
                target_monitoring_details = {"Network":["CpuUtilization","computeagent"]}
        }
        defined_tags = {}
        freeform_tags = {}
      },
  SCH-05 = {
        compartment_id      = "Security"
        display_name        = "SCH-05"
        description         = "stream to loganalytics"
        source_details = {
                source_kind               = "streaming"
                source_stream_name        = {"Security": "source-stream"}
        }
        target_details = {
                target_kind                = "loggingAnalytics"
                target_log_group_name      = {"Network": "target-log"}
                target_log_source_identifier = "AVDF Alert in Oracle Database"
        }
        defined_tags = {}
        freeform_tags = {}
      },
  SCH-07 = {
        compartment_id      = "Security"
        display_name        = "SCH-07"
        description         = "stream to function"
        source_details = {
                source_kind               = "streaming"
                source_stream_name        = {"Security": "source-stream"}
        }
        target_details = {
                target_kind               = "functions"
                target_function_details   = ["Security@subnet-events@test-func"]
        }
        defined_tags = {}
        freeform_tags = {}
      },
##Add New SCH for phoenix here##
}