# delete all RG in your subscription 
az group list --query [].name -o tsv | xargs -otl az group delete --no-wait --yes -n

# deleting all Resource Groups except 1 
for RG in $(az group list --query [].name -o tsv); do
if [ $RG!=cloud-shell-storage-centralindia ] ; then az group delete --no-wait --yes -n $RG; fi;
done;

# delete all RG except a list of RG
input_string = input("Enter a list element separated by space ")
list  = input_string.split()
