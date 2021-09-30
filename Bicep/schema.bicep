param administratorLogin string

@secure()
param administratorLoginPassword string
param location string
param serverName string
param skuCapacity int
param skuFamily string
param skuName string
param skuSizeMB int
param skuTier string
param version string
param backupRetentionDays int
param geoRedundantBackup string
param previewFeature string = ''
param tags object = {}
param storageAutoGrow string = 'Disabled'
param infrastructureEncryption string = 'Disabled'

resource serverName_resource 'Microsoft.DBforPostgreSQL/servers@2017-12-01-preview' = {
  kind: ''
  location: location
  name: serverName
  properties: {
    version: version
    administratorLogin: administratorLogin
    administratorLoginPassword: administratorLoginPassword
    storageProfile: {
      storageMB: skuSizeMB
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
    size: skuSizeMB
    family: skuFamily
  }
  tags: tags
}