#!
set -eu

echo "Creating DynamoDB table"

aws dynamodb create-table \
    --table-name WellLogs \
    --attribute-definitions \
        AttributeName=Id,AttributeType=S \
    --key-schema \
        AttributeName=Id,KeyType=HASH \
    --provisioned-throughput \
        ReadCapacityUnits=1,WriteCapacityUnits=1 \
    --table-class STANDARD
