parameter_role_arn = "arn:aws:iam::813020382017:role/cloud-lztf-organization-pro-ssm_parameters-iar-glb"
parameter_region = "eu-west-1"
accounts = {
    tf_tenant1-networking-pro = {
        account_email = "aws.global.breakglass+tf_tenant1_networking_pro3@gmail.com"
        account_name = "aws-tf_tenant1-networking-pro"
        ou = "Custom (ou-crf1-wqiw02j5)"
        email = "aws.global.breakglass+tf_tenant1_networking_pro3@gmail.com"
        first_name = "tf_tenant1"
        last_name = "networking pro"
        tenant = "tenant1"
        account_tags = {
            tag_prueba = "valor_tag_prueba"
        }
        custom_fields = {
            default_assingment = true
            additional_assingments = {}
            parameter_string = "value_string"
            parameter_map = {
                key1 = "value1"
                key2 = "value2"
            }
        }
        customizations_name = "sandbox"
    }
}