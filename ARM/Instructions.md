# ARM deployment

Create

```sh
az deployment group create --resource-group <rg> --parameters parameters.json --parameters administratorLoginPassword=$administratorLoginPassword  --template-file schema.json
administratorLoginPassword='<your password here>'
```

az postgres server list

Delete

```sh
az postgres down --resource-group <rg> --server-name aa-demo-pg
```

https://ms.portal.azure.com/#blade/HubsExtension/BrowseResource/resourceType/Microsoft.DBforPostgreSQL%2Fservers

