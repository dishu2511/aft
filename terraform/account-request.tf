# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "dev_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "dineshsharma2511+aft-dev@gmail.com"
    AccountName  = "dev"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "workload"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "dineshsharma2511+aft-dev@gmail.com"
    SSOUserFirstName = "Dinesh"
    SSOUserLastName  = "Sharma"
  }

  account_tags = {
    "ABC:Owner"       = "dineshsharma2511+aft-dev@gmail.com"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Dev"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Dinesh Sharma"
    change_reason       = "Commissioning dev account"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "dev-customizations"
}
