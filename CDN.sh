#!/usr/bin/env bash

set -e

#create resource group and set it as default
az group create --name cdn-tutorial --location westus && az config set defaults.group=cdn-tutorial defaults.location=westus 

#input webapp name from the user
#it will appear in the URL OF WEBAPP 
#
echo -e $(tput setaf 1 Enter your Webapp Name :  ) ; read appName
az webapp up --name $appName --logs --launch-browser
