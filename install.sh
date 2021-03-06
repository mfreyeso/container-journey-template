#!/bin/bash

BXUSER=$user BXPASS=$password BXACCOUNT=1 ./linux.sh

bx cs workers wordpress
bx cs cluster-config wordpress
$(bx cs cluster-config wordpress | grep -v "Downloading" | grep -v "OK" | grep -v "The")
kubectl get secrets --namespace=default
