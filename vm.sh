#!/usr/bin/env bash

set -e

alias vm.sh='sh vm.sh'
#take the input from the user for resource group & vm  name 

echo -n " $(tput setaf 44) Enter your choice for the name of resource group : $(tput sgr 0) "; read rg_name


#create a resource group 
az group create -n $rg_name -l centralindia -o table


#create a vm 
echo " "

echo -n " $(tput setaf 11) Name of VM :->  $(tput sgr 0)"; read vm_name

az vm create \
-g $rg_name -l centralus -n $vm_name \
--image UbuntuLTS \
--admin-username azureuser \
--generate-ssh-keys \
--output table


ip=$(az vm show \
-n $vm_name -g $rg_name \
--show-details \
--query [publicIps] \
--output tsv) 

ssh azureuser@$ip


