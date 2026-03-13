#!/bin/bash

ACCOUNT="jamiucloudstorage2025"
KEY=${{ secrets.AZURE_STORAGE_KEY }}
CONTAINER="mycontainer"

case "$1" in

upload)
az storage blob upload --account-name $ACCOUNT --account-key $KEY --container-name $CONTAINER --file $2 --name $2
;;

list)
az storage blob list --account-name $ACCOUNT --account-key $KEY --container-name $CONTAINER --output table
;;

download)
az storage blob download --account-name $ACCOUNT --account-key $KEY --container-name $CONTAINER --name $2 --file $2
;;

delete)
az storage blob delete --account-name $ACCOUNT --account-key $KEY --container-name $CONTAINER --name $2
;;

*)
echo "Usage:"
echo "./storage.sh upload filename"
echo "./storage.sh download filename"
echo "./storage.sh list"
echo "./storage.sh delete filename"
;;

esac