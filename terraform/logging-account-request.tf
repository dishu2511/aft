# creating logarchive account
module "logarchive_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "dineshsharma2511+aftlogarchive@gmail.com"
    AccountName  = "Log Archive"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Security"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-bal-bla)"
    SSOUserEmail     = "dineshsharma2511+aftlogarchive@gmail.com"
    SSOUserFirstName = "Dinesh"
    SSOUserLastName  = "Sharma"
  }

  account_tags = {
    "ABC:Owner"       = "Dinesh"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "Log Archive"
    "ABC:CostCenter"  = "3333343422222"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    "ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Dinesh Sharma"
    change_reason       = "Commissioning Log Archive account"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "logarchive-customizations"
}
