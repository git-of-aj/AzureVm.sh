```
https://docs.microsoft.com/en-us/azure/virtual-machine-scale-sets/tutorial-create-and-manage-cli
```

[CLOUD-INIT BASICS BY DIGITAL OCEAN](https://www.digitalocean.com/community/tutorials/an-introduction-to-cloud-config-scripting)


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
When creating using GitHub just -- 
#include - 
raw.giyhubusercontenet

⬆️🆙In user group section
----------------------------------------------
## GEneralise Windows VM 
IN LINUX - https://learn.microsoft.com/en-us/azure/virtual-machines/capture-image-portal

Generalizing a Windows virtual machine (VM) using the graphical user interface (GUI) typically involves preparing the VM for cloning or creating a template. This process is commonly used in virtualization environments like VMware or Hyper-V. The generalization process removes unique system identifiers, making it suitable for deployment on multiple VMs. Here are the steps to generalize a Windows VM using the GUI:

**Note:** These steps are generalized and might vary slightly depending on your specific virtualization platform. Ensure you have proper backups and understand the implications of generalizing a VM before proceeding.

1. **Log In to the Windows VM:** Log in to the Windows VM that you want to generalize using an account with administrative privileges.

2. **Open a Command Prompt:** Press `Win + R` to open the Run dialog, type `cmd`, and press Enter to open a Command Prompt window.

3. **Navigate to Sysprep Directory:** Navigate to the Sysprep directory, which is typically located at `C:\Windows\System32\Sysprep`. You can use the `cd` command to change the directory:

   ```
   cd C:\Windows\System32\Sysprep
   ```

4. **Run Sysprep:** In the Sysprep directory, you'll find the Sysprep.exe program. Double-click it to open the System Preparation Tool dialog.

5. **Choose System Cleanup Action:** In the System Preparation Tool dialog, select the following options:
   - **System Cleanup Action:** Enter "Enter System Out-of-Box Experience (OOBE)."
   - **Generalize:** Check the "Generalize" option.
   - **Shutdown Options:** Choose "Shutdown" from the dropdown menu.

   ![Sysprep Dialog](https://i.imgur.com/2IaJmAE.png)

6. **Click OK:** Once you've configured the options, click the "OK" button in the Sysprep dialog.

7. **Sysprep Process:** The Sysprep tool will start the generalization process. It will remove unique identifiers, such as the computer's security identifier (SID) and other hardware-specific information.

8. **Shutdown:** After Sysprep completes, the VM will shut down automatically.

9. **Create a VM Template or Clone:** Depending on your virtualization platform, you can now create a template or clone the generalized VM. The steps for this will vary based on your specific platform. Consult your virtualization platform's documentation for instructions on creating templates or cloning VMs.

10. **Deploy VMs:** Once you have a template or clone, you can use it to deploy new VMs. These VMs will start from a clean, generalized state.

Remember that this process will remove unique system identifiers, so it's essential to use this generalized VM for deploying new VMs only, not as a production machine. Always keep backups and ensure you have valid Windows licenses for each deployed VM.


## CLOUD INIT NODE APP 

```
https://docs.microsoft.com/en-us/azure/virtual-machines/linux/tutorial-automate-vm-deployment
```
