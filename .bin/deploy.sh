#! /bin/bash
ROLE_NAME = $1

zip -r9 deploy_package.zip ./src
test_s = $ROLE_NAME
echo $test_s
aws iam create-role --role-name $ROLE_NAME --assume-role-policy-document file://./iam/role.json
echo $ROLE_NAME
# set ARN 'aws iam list-roles --query "Roles[?RoleName == '$ROLE_NAME'].[RoleName, Arn]" | jq -r '.[][1]' '
aws lambda create-function --role $ARN --function-name $ROLE_NAME --zip-file fileb://deploy_package.zip --handler index.handler --runtime nodejs12.x
