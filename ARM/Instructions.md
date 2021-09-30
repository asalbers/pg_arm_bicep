# ARM Lab

Create

```sh
params='serverName='$serverName' administratorLogin='$adminUser' administratorLoginPassword='$adminPassword &&
az deployment group create --resource-group $resourceGroupName --parameters $params --template-uri https://raw.githubusercontent.com/Azure/azure-quickstart-templates/master/quickstarts/microsoft.dbforpostgresql/managed-postgresql-with-vnet/azuredeploy.json &&
read -p "Press [ENTER] to continue: "

```
az deployment group create --resource-group AALabRG --parameters parameters.json --parameters administratorLoginPassword=$administratorLoginPassword  --template-file schema.json
administratorLoginPassword='testpassword2*443^'


az postgres server list

Delete

```sh
az postgres down --resource-group AALabRG --server-name aa-demo-pg
```