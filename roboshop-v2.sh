#!/bin/bash

AMI_ID="ami-0220d79f3f480ecf5"
ZONE_ID="Z03529883O6BVV0TAO031"
DOMAIN_NAME="subbudevops.online"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

### Validation ###
if [ $# -lt 2 ]; then
    echo -e "$R ERROR:: Atleast 2 arguments required $N"
    echo "USAGE: $0 [create/delete] [instance1] [instance2...]"
    exit 1
fi

ACTION=$1
shift # first argument will be removed

if [ $ACTION != "create" ] && [ $ACTION != "delete" ]; then
    echo -e "$R ERROR:: First arguement must be either create or delete $N"
    echo "USAGE: $0 [create/delete] [instance1] [instance2...]"
    exit 1
if
