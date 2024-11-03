# Validate parameters
if [[ $1 != "deploy" && $1 != "delete" && $1 != "preview" ]]; then
    echo "ERROR: Please check execution mode. Valid values: deploy, delete, preview." >&2
    exit 1
fi

readonly REGION="us-east-1"
EXECUTION_MODE=$1
STACK_NAME=$2
TEMPLATE_FILE_NAME=starter/$3
PARAMETERS_FILE_NAME=starter/$4

# Execute CloudFormation CLI
if [ $EXECUTION_MODE == "deploy" ]
then
    aws cloudformation deploy \
        --stack-name $STACK_NAME \
        --template-file $TEMPLATE_FILE_NAME \
        --parameter-overrides file://$PARAMETERS_FILE_NAME \
        --region=$REGION \
        --capabilities CAPABILITY_NAMED_IAM
fi
if [ $EXECUTION_MODE == "delete" ]
then
    aws cloudformation delete-stack \
        --stack-name $STACK_NAME \
        --region=$REGION
fi
if [ $EXECUTION_MODE == "preview" ]
then
    aws cloudformation deploy \
        --stack-name $STACK_NAME \
        --template-file $TEMPLATE_FILE_NAME \
        --parameter-overrides file://$PARAMETERS_FILE_NAME \
        --no-execute-changeset \
        --region=$REGION \
        --capabilities CAPABILITY_NAMED_IAM
fi