# poc-iac-azure-linux-script
Proof of concept, infrastructure as code, load balanced azure front-end web servers with a single database server. Also demonstrate how to execute custom scripts upon provisioning virtual machines.
### Diagram
![Diagram vnet dan vm](https://raw.githubusercontent.com/icgid/poc-iac-azure-linux-script/master/diagrams/poc-iac-azure-linux-script.png)
### How to Deploy Using Azure CLI
Open Azure CLI command window, then login by typing `az login`. After successul login, execute the following command to create a resource group:

```
az group create --name poc-iac-azure-linux-script --location southeastasia
```

After resource group is created successfully, execute the following command to start the deployment process:

```
az group deployment create --name LinuxScriptDeployment --resource-group poc-iac-azure-linux-script --template-file .\azuredeploy.json --parameters azuredeploy.parameters.json
```
