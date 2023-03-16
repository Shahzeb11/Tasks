#!/bin/bash

################################
# Author: Shahzeb
# Version: v1
#
#
#
# This script track ec2 resource usage like ec2 iam s3 etc:
#
################################

set -x

#list s3 buckets

echo "Print S3 Lists"
aws s3 ls

#list ec2 instances

echo "Print EC2 Lists"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'

#list lambda

echo "Print lambda Lists"
aws lambda list-functions

#List iam users

echo "Print IAM Users Lists"
aws iam list-users
