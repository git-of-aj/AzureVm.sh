# In this repo we create a `bash` script.

In this `bash` script we ask the user for the name for **Resource Group** and **VM**
then we create the same. 

Also we `ssh` into that vm 

## To run this script just type 
```bash
vm.sh
```
then The script will start running 
and asks for the name of VM & resource group

*This `script` creates resources in the uscentral region*

to change the location, Just modify the `-l` flag 
in appropriate places.
eg: ` -l westindia `

### Thank You hope you like it ! 

```sh
az vm create -n MyVm -g MyResourceGroup --image UbuntuLTS

# create multiple vm with names vm 0, vm1 etc
az vm create -n MyVm -g MyResourceGroup --image centos --count 3 \
--subnet-name \
--vnet-name \
--size \ 
--public-ip-address \  # incase of private IP this value will be ""
--public-ip-sku \ 


```

## CLOUD INIT NODE APP 

```
https://docs.microsoft.com/en-us/azure/virtual-machines/linux/tutorial-automate-vm-deployment
```
