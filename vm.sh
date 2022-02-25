#!/usr/bin/env bash

set -e

alias vm.sh='bash vm.sh'
#take the input from the user for resource group & vm  name 

echo -n " $(tput setaf 44) Enter your choice for the name of resource group : $(tput sgr 0) "; read rg_name

echo -n " $(tput setaf 11) Name of VM :->  $(tput sgr 0)"; read vm_name


#create a resource group 
az group create -n $rg_name -l centralindia -o table


#create a vm 
echo " "

az vm create \
-g $rg_name -l centralus -n $vm_name \
--image UbuntuLTS \
--admin-username azureuser \
--generate-ssh-keys \
--output table

# download extension
az vm extension set --resource-group myResourceGroup1 --vm-name myVM1 --name NetworkWatcherAgentLinux --publisher Microsoft.Azure.NetworkWatcher --version 1.4


ip=$(az vm show \
-n $vm_name -g $rg_name \
--show-details \
--query [publicIps] \
--output tsv) 

# delete the vm 
#az vm delete -g $rg_name -n $vm_name --yes


ssh azureuser@$ip << EOF
   echo -e "You just ssh into the vm $vm_name \n Welcome !! "
   apt-get update 
   apt-get install apache2 -y
EOF 



