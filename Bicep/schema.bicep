// Parameter setting and declaration
param administratorLogin string = 'aaPGAdmin'

@secure() // decorator
param administratorLoginPassword string = 'AATestDeploy4359!' // Not best practice
param location string = 'eastus'
param serverName string = 'aa-pg-demo-bicep'
param skuCapacity int = 2
param skuFamily string = 'Gen5'
param skuName string = 'B_Gen5_2'
param skuTier string = 'Basic'
param version string = '11'
param backupRetentionDays int = 7
param geoRedundantBackup string = 'Disabled'
param previewFeature string = ''
param tags object = {}
param storageAutoGrow string = 'Disabled'
param infrastructureEncryption string = 'Disabled'

//Resource declaration
resource serverName_resource 'Microsoft.DBforPostgreSQL/servers@2017-12-01-preview' = {
  location: location
  name: serverName
  properties: {
    version: version
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorLoginPassword
    storageProfile: {
      backupRetentionDays: backupRetentionDays
      geoRedundantBackup: geoRedundantBackup
      storageAutoGrow: storageAutoGrow
    }
    previewFeature: previewFeature
    infrastructureEncryption: infrastructureEncryption
  }
  sku: {
    name: skuName
    tier: skuTier
    capacity: skuCapacity
    family: skuFamily
  }
  tags: tags
}
