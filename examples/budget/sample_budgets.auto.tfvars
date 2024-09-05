# Copyright (c) 2024, Oracle and/or its affiliates. All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at https://oss.oracle.com/licenses/upl.
#
############################
# Governance
# Create Budgets
# Allowed Values:
# compartment_id can be the ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# budget_end_date and budget_start_date are mandatory for budgets of "SINGLE USE" type
# budget_processing_period_start_offset is mandatory for budgets of "MONTH" type
# target_type - supported values are "TAG"/"COMPARTMENT"
# for COMPARTMENT type target, targets value should be list of compartment ocid or the name of the compartment hierarchy delimited by double hiphens "--"
# for TAG type target, targets value should be list of  <tag-namespace.tag-key.tag-value>
# Sample import command :
# terraform import "module.budgets[\"<<budget terraform variable name>>\"].oci_budget_budget.budget" <budget ocid>
############################
budgets = {
    Budget1 = {
            compartment_id = "root"
            amount = 10
            reset_period = "MONTHLY"
            description = "demo budget1"
            display_name = "Budget1"
            processing_period_type = "SINGLE_USE"
            budget_start_date = "2024-06-01"
            budget_end_date = "2024-06-11"
            target_type = "COMPARTMENT"
            targets = ["root"]
            },
    Budget2 = {
            compartment_id = "root"
            amount = 100
            reset_period = "MONTHLY"
            description = "demo budget 2"
            budget_processing_period_start_offset = "5"
            display_name = "Budget2"
            processing_period_type = "MONTH"
            target_type = "TAG"
            targets = ["Operations.CostCenter.01"]
            },
}

############################
# Governance
# Create Budget Alert Rules
# Allowed Values:
# budget_id = <budget name or ocid>
# type = <ACTUAL/FORECAST>
# threshold = <threshold value>
# threshold_type = <ABSOLUTE/PERCENTAGE>
# Sample import command :
# terraform import "module.budget-alert-rules[\"<< budget alert rule terraform variable name>>\"].oci_budget_alert_rule.alert_rule" budgets/<budget ocid>/alertRules/<budget alert rule ocid>
############################
budget_alert_rules = {
    "Budget2_ACTUAL_PERCENTAGE_70-0" = {
            budget_id = "Budget2"
            type = "ACTUAL"
            threshold = "70.0"
            threshold_type = "PERCENTAGE"
            },
    "Budget2_ACTUAL_PERCENTAGE_100" = {
            budget_id = "Budget2"
            type = "ACTUAL"
            threshold = "100"
            threshold_type = "PERCENTAGE"
            message = "test message"
            recipients = "recipient_email1@oracle.com,recipient_email2@oracle.com"
            },
    "Budget2_FORECAST_ABSOLUTE_20-0" = {
            budget_id = "Budget2"
            type = "FORECAST"
            threshold = "20.0"
            threshold_type = "ABSOLUTE"
            recipients = "recipient_email3@oracle.com"
            },
}