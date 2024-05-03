variable "accounts" {
    description = "Mapa de cuentas"
    type = map(any)
}

variable "parameter_role_arn" {
    description = "Role for reading global ssm parameter"
    type = string
}

variable "parameter_region" {
    description = "Region of global ssm parameter"
    type = string
}