#!/bin/bash
set -euC

ROLE_NAME=$1
echo $ROLE_NAME
zip -r9 deploy_package.zip ./src
aws iam create-role --role-name $ROLE_NAME --assume-role-policy-document file://./iam/role.json
ARN=`aws iam list-roles --query "Roles[?RoleName== '$ROLE_NAME'].[RoleName, Arn]" | jq -r '.[][1]'`
echo $ARN
aws lambda create-function --role $ARN --function-name $ROLE_NAME --zip-file fileb://deploy_package.zip --handler index.handler --runtime nodejs12.x
