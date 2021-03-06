# This file implements IAzureUtility for Azure PowerShell version >= 1.0.0

# return storageKey from storageAccount if present in classic, else throws
function Get-AzureStorageKeyFromRDFE
{
    param([string]$storageAccountName)
}

# return azureresourcegroup name for storageaccount present in RM, if not present throws
function Get-AzureStorageAccountResourceGroupName
{
    param([string]$storageAccountName)
}

# return storageKey from storageAccount if present in RM, else throws
function Get-AzureStorageKeyFromARM
{
    param([string]$storageAccountName)
}

# creates azureStorageContext object for given storageaccount and storagekey
# used in doing operations over storage
function Create-AzureStorageContext
{
    param([string]$storageAccountName,
          [string]$storageAccountKey)
}

#creates azure container on given storageaccount whose information is present in $storageContext
function Create-AzureContainer
{
    param([string]$containerName,
          [object]$storageContext)
}

# deletes azure container from storageaccount whose information is present in $storageContext
function Remove-AzureContainer
{
    param([string]$containerName,
          [object]$storageContext)
}

# Gets cloud service if present, else throws
function Get-AzureCloudService
{
    param([string]$cloudServiceName)
}

# Returns all classic VM Resources in ResourceGroup $resourceGroupName
function Get-AzureClassicVMsInResourceGroup
{
    param([string]$resourceGroupName)
}

# Return Details of all Classic VMs in ResourceGroup $resourceGroupName
# Return type is hash table with key = VMName, Value = resourceProperties
# Where resourceProperties = @{"Name" = resourceName; "fqdn" = resourceFQDN; "winRMHttpsPort" = resourceWinRmHttpsPort}
function Get-AzureClassicVMsConnectionDetailsInResourceGroup
{
    param([string]$resourceGroupName,
          [object]$azureClassicVMResources)

}

# Returns all RM VM Resources in ResourceGroup $resourceGroupName
function Get-AzureRMVMsInResourceGroup
{
    param([string]$resourceGroupName)
}

# Returns All Details related to RG Resources which will be used to get connection information for RM VMs
# Return type is hash table in following format:
# @{"networkInterfaceResources" = networkInterfaceResources; "publicIPAddressResources" = publicIPAddressResources; "loadBalancerResources" = LoadBalancerDetails}
# Where LoadBalancerDetails is hash table in following format: @{"frontEndIPConfigs" = frontEndIPConfigs; "inboundRules" = inboundRules}
function Get-AzureRMResourceGroupResourcesDetails
{
    param([string]$resourceGroupName,
          [object]$azureRMVMResources)
}

#Generate and return SAS Token correspoding to Container and storageaccount information present in $storageContext
function Generate-AzureStorageContainerSASToken
{
    param([string]$containerName,
          [object]$storageContext,
          [System.Int32]$tokenTimeOutInHours)
}
