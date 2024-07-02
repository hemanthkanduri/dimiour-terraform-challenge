#script: customerdms-local.sh

export acrName="akkadia-demo"
export location="eastus2"
export acrSku="Basic"

echo "acrName=${acrName}" >> $GITHUB_ENV
echo "location=${location}" >> $GITHUB_ENV
echo "acrSku=${acrSku}" >> $GITHUB_ENV
