#!/bin/bash

# before running this script modify the bucket name to the one created with build-bucket-and-ssm-resources.sh


# zip up the full Google API for Python, and copy to S3 to be used as the Lambda layer
#
rm -f google-api-python-layer.zip
rm -rf python
mkdir python

pip3 install google-api-python-client --target python
zip -r google-api-python-layer.zip python

aws s3 cp google-api-python-layer.zip s3://textract-console-eu-west-3-70388abc-d446-447a-a281-45d5b235202b



# zip the Lambda file and push to S3
#
cd ../src
rm -f google-drive-lambda.zip
zip google-drive-lambda.zip google-drive-lambda.py

aws s3 cp google-drive-lambda.zip s3://textract-console-eu-west-3-70388abc-d446-447a-a281-45d5b235202b

