PREFIX="contosofin" # NOTE: Please make sure PREFIX is unique in your tenant, you must not have any hyphens '-' in the value.
RG="${PREFIX}-rg"
LOC="eastus"
NAME="${PREFIX}"
ACR_NAME="${NAME}acr"
VNET_NAME="${PREFIX}vnet"
AKSSUBNET_NAME="${PREFIX}akssubnet"
SVCSUBNET_NAME="contosofinsvcsubnet"
APPGWSUBNET_NAME="${PREFIX}appgwsubnet"
# NOTE: DO NOT CHANGE FWSUBNET_NAME - This is currently a requirement for Azure Firewall.
FWSUBNET_NAME="AzureFirewallSubnet"
FWNAME="${PREFIX}fw"
FWPUBLICIP_NAME="${PREFIX}fwpublicip"
FWIPCONFIG_NAME="${PREFIX}fwconfig"
FWROUTE_TABLE_NAME="${PREFIX}fwrt"
FWROUTE_NAME="${PREFIX}fwrn"
AGNAME="${PREFIX}ag"
AGPUBLICIP_NAME="${PREFIX}agpublicip"
APPID = "ec82132d-cae5-47ae-8e98-ad2e0d4cbb52"
PASSWORD = "-D55nlCHj-j4x~9K9.ZzCxrf-i99bHG~1R"

export TF_VAR_prefix=$PREFIX
export TF_VAR_resource_group=$RG
export TF_VAR_location=$LOC
export TF_VAR_client_id=$APPID
export TF_VAR_client_secret=$PASSWORD
export TF_VAR_azure_subnet_id=$(az network vnet subnet show -g $RG --vnet-name $VNET_NAME --name $AKSSUBNET_NAME --query id -o tsv)
export TF_VAR_azure_aag_subnet_id=$(az network vnet subnet show -g $RG --vnet-name $VNET_NAME --name $APPGWSUBNET_NAME --query id -o tsv)
export TF_VAR_azure_subnet_name=$APPGWSUBNET_NAME
export TF_VAR_azure_aag_name=$AGNAME
export TF_VAR_azure_aag_public_ip=$(az network public-ip show -g $RG -n $AGPUBLICIP_NAME --query id -o tsv)
export TF_VAR_azure_vnet_name=$VNET_NAME 
export TF_VAR_github_organization=xuhongl # PLEASE NOTE: This should be your github username if you forked the repository.
export TF_VAR_github_token=3dcb5bea78a7878954c090d2e220d7d6f6399456