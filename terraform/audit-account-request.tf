# creating audit account
module "audit_account" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "dineshsharma2511+aftaudit@gmail.com"
    AccountName  = "Audit"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Security"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-bal-bla)"
    SSOUserEmail     = "dineshsharma2511+aftaudit@gmail.com"
    SSOUserFirstName = "Dinesh"
    SSOUserLastName  = "Sharma"
  }

  account_tags = {
    "ABC:Owner"       = "Dinesh"
    "ABC:Division"    = "ENT"
    "ABC:Environment" = "audit"
    "ABC:CostCenter"  = "3333343422222"
    "ABC:Vended"      = "true"
    "ABC:DivCode"     = "102"
    "ABC:BUCode"      = "ABC003"
    #"ABC:Project"     = "123456"
  }

  change_management_parameters = {
    change_requested_by = "Dinesh Sharma"
    change_reason       = "Commissioning audit account"
  }

  custom_fields = {
    custom1 = "a"
    custom2 = "b"
  }

  account_customizations_name = "audit-customizations"
}
