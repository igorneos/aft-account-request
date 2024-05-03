module "accounts" {
  for_each = var.accounts
  source = "./modules/aft-account-request"
  control_tower_parameters = {
    AccountEmail              = each.value.account_email
    AccountName               = each.value.account_name
    ManagedOrganizationalUnit = each.value.ou
    SSOUserEmail              = each.value.email
    SSOUserFirstName          = each.value.first_name
    SSOUserLastName           = each.value.last_name
  }
  account_tags = merge(
    {},
    each.value.account_tags
  )
  change_management_parameters = {
    change_requested_by = lookup(each.value, "change_requested_by", "AFT")
    change_reason       = lookup(each.value, "change_reason", "New Account needed")
  }
  custom_fields = merge(
    {
      global_parameter_role = jsonencode(var.parameter_role_arn)
      global_parameter_region = jsonencode(var.parameter_region)
      account_name = jsonencode(each.value.account_name)
      tenant = jsonencode(lookup(each.value, "tenant", ""))
      default_assingment = jsonencode(lookup(each.value, "default_assingment", true))
      additional_assingments = jsonencode(lookup(each.value, "additional_assingments", {}))
    },
    {
      for key, value in lookup(each.value, "custom_fields", {}) : key => jsonencode(value)
    }
  )
  account_customizations_name = each.value.customizations_name
}
