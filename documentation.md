## Requirements

The following requirements are needed by this module:

- azuread (= 0.9)

- null (~>2.1)

- tls (~>2.1)

## Providers

The following providers are used by this module:

- azurerm

## Required Inputs

No required input.

## Optional Inputs

The following input variables are optional (have default values):

### dns\_corp

Description: n/a

Type: `bool`

Default: `false`

### dns\_e

Description: n/a

Type: `bool`

Default: `false`

### dns\_gov

Description: n/a

Type: `bool`

Default: `false`

### dns\_i

Description: n/a

Type: `bool`

Default: `false`

### environment

Description: n/a

Type: `string`

Default: `"sbox"`

### location

Description: Location of the cluster.

Type: `string`

Default: `"uksouth"`

### log\_solutions

Description: A list of solutions to add to the workspace. Should contain solution\_name, publisher and product.

Type: `list(object({ solution_name = string, publisher = string, product = string }))`

Default:

```json
[
  {
    "product": "OMSGallery/AzureAppGatewayAnalytics",
    "publisher": "Microsoft",
    "solution_name": "AzureAppGatewayAnalytics"
  },
  {
    "product": "OMSGallery/KeyVaultAnalytics",
    "publisher": "Microsoft",
    "solution_name": "KeyVaultAnalytics"
  },
  {
    "product": "OMSGallery/NetworkMonitoring",
    "publisher": "Microsoft",
    "solution_name": "NetworkMonitoring"
  },
  {
    "product": "OMSGallery/ContainerInsights",
    "publisher": "Microsoft",
    "solution_name": "ContainerInsights"
  }
]
```

### prefix

Description: n/a

Type: `string`

Default: `"ofg"`

### provision

Description: n/a

Type: `bool`

Default: `true`

### provision\_blob\_storage

Description: n/a

Type: `bool`

Default: `true`

### tags

Description: n/a

Type: `map(string)`

Default:

```json
{
  "ApplicationName": "x",
  "Approver": "X",
  "BudgetAmount": "x",
  "BusinessUnit": "x",
  "CostCenter": "x",
  "Location": "UKSOUTH",
  "ServiceClass": "x"
}
```

## Outputs

No output.

