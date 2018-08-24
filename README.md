# poc-iac-azure-linux-script
Proof of concept, infrastructure as code, load balanced azure front-end web servers with a single database server. Also demonstrate how to execute custom scripts upon provisioning virtual machines.

This project is adapted from [Microsoft MusicStore](https://github.com/Microsoft/dotnet-core-sample-templates/tree/master/dotnet-core-music-linux) template.

Adaptation efforts:
* Create two subnets in the virtual network: Frontend subnet and Backend subnet
* Instead of using SQL Server managed service, this POC uses a VM instance to host databases
* We plan to deploy: PHP (using Wordpress as example), .NET Core, and Node.JS solutions that will be rolled out gradually

### Diagram
![Diagram vnet dan vm](https://raw.githubusercontent.com/icgid/poc-iac-azure-linux-script/master/diagrams/poc-iac-azure-linux-script.png)
### How to Deploy Using Azure CLI
Open Azure CLI command window, then login by typing `az login`. After successul login, execute the following command to create a resource group:

```
az group create --name poc-iac-azure-linux-script --location southeastasia
```

After resource group is created successfully, execute the following command to start the deployment process:

```
az group deployment create --name LinuxScriptDeployment --resource-group poc-iac-azure-linux-script --template-file azuredeploy.json --parameters azuredeploy.parameters.json
```

### Release Notes
#### Version 0.1
* Infrastructure as code is established, this implements the infrastructure as depicted on the diagram above
* PHP solution (a new Wordpress installation) is established
