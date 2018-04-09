Usage:

To use the newly created cluster you can -

view the console in your default browser with:
az aks browse -n ${cluster_name} -g ${cluster_resource_group}

Push images to the ACR (if created) with:
docker login ${acr_host} -u $ARM_CLIENT_ID -p $ARM_CLIENT_SECRET
(where ARM_CLIENT_ID and ARM_CLIENT_SECRET are your client ID and password respectively)

Connect the new cluster to your existing Container Registry:
# begin
ACR_RESOURCE_GROUP=myACRResourceGroup #Update your acr resource group name here
ACR_NAME=myACRRegistry #And the acr name here

# Get the id of the service principal configured for AKS
CLIENT_ID=$(az aks show --resource-group ${cluster_resource_group} --name ${cluster_name} --query "servicePrincipalProfile.clientId" --output tsv)

# Get the ACR registry resource id
ACR_ID=$(az acr show --name $ACR_NAME --resource-group $ACR_RESOURCE_GROUP --query "id" --output tsv)

# Create role assignment
az role assignment create --assignee $CLIENT_ID --role Reader --scope $ACR_ID
az role assignment create --assignee $CLIENT_ID --role Reader --scope $ACR_ID
# end
