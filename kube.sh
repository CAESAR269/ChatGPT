az group create --name myResourceGroup --location eastus

az aks create -g myResourceGroup -n myAKSCluster --enable-managed-identity --node-count 2 --node-vm-size Standard_B2S --enable-addons monitoring --enable-msi-auth-for-monitoring  --generate-ssh-keys

az aks get-credentials --resource-group myResourceGroup --name myAKSCluster
