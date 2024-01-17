#!/bin/bash

# before running this script modify the stack name, bucket name, and Parameter Store parameter names as needed

aws cloudformation create-stack \
    --stack-name google-drive-bucket-and-ssm \
    --template-body file://bucket-and-ssm-resources.yaml \
    --capabilities CAPABILITY_AUTO_EXPAND \
    --parameters ParameterKey=LambdaAndReportBucket,ParameterValue=textract-console-eu-west-3-70388abc-d446-447a-a281-45d5b235202b
 \
        ParameterKey=GoogleServiceAccountCredentials,ParameterValue=google-service-account-credentials \
        ParameterKey=GoogleDriveFolderId,ParameterValue=1YoRs3bswY7wSMMpJfGJYHV-ihgwfKUSX
