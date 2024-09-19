# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Quota-Policy - tfvars
# Allowed Values:
############################
quota_policies = {
     OracleAnalyticsQuota =  {
            quota_name               = "OracleAnalyticsQuota"
            quota_description        = "Quota for Oracle Analytics Cloud"
            quota_statements         = ["zero analytics quota ee-ocpu-count in tenancy", "zero analytics quota se-ocpu-count in tenancy", "zero analytics quota ee-user-count in tenancy", "zero analytics quota se-user-count in tenancy", "set analytics quota ee-ocpu-count to 8 in tenancy where any{request.region = 'us-ashburn-1', request.region = 'us-phoenix-1'}"]
        },
}