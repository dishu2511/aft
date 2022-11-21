# creating development account
module "development_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "dineshsharma2511+aft-development@gmail.com"
    AccountName  = "development"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "workload"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-bal-bla)"
    SSOUserEmail     = "dineshsharma2511+aft-development@gmail.com"
    SSOUserFirstName = "Dinesh"
    SSOUserLastName  = "Sharma"
  }

  account_tags = {
    "ABC:Owner"       = "Dinesh"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "development"
    "ABC:CostCenter"  = "3333343422222"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Dinesh Sharma"
    change_reason       = "Commissioning development account"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "development-customizations"
}

# creating preprod account
module "preprod_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "dineshsharma2511+aft-preprod@gmail.com"
    AccountName  = "preprod"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "workload"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-bal-bla)"
    SSOUserEmail     = "dineshsharma2511+aft-preprod@gmail.com"
    SSOUserFirstName = "Dinesh"
    SSOUserLastName  = "Sharma"
  }

  account_tags = {
    "ABC:Owner"       = "Dinesh"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "preprod"
    "ABC:CostCenter"  = "123456"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Dinesh Sharma"
    change_reason       = "Commissioning preprod account"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "preprod-customizations"
}
