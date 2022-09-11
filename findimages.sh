#!/bin/bash


SUBSCRIPTION_NAME="Microsoft-Obay Subscription"
LOCATION="westus2"
PUBLISHER="MicrosoftWindowsServer"
OFFER="WindowsServer"
SKU="Datacenter-Core-1809-with-Containers-smalldisk"
az vm image list --all --subscription "$SUBSCRIPTION_NAME" --location $LOCATION --publisher $PUBLISHER --offer $OFFER | jq

# SUBSCRIPTION_NAME="Microsoft-Obay Subscription"
# PUBLISHER="Debian"
# OFFER="debian-10"
# SKU="10"
# az vm image list --all --subscription "$SUBSCRIPTION_NAME" --location $LOCATION --publisher $PUBLISHER --offer $OFFER --sku $SKU | jq