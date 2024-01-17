#!/bin/bash

# before running this script modify the bucket name to the one created with build-bucket-and-ssm-resources.sh

aws s3 cp ../testdata/ s3://textract-console-eu-west-3-70388abc-d446-447a-a281-45d5b235202b
 --recursive --exclude "*" --include "*.xlsx"
