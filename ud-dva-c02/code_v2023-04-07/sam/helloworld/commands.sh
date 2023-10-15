aws s3 mb s3://arvins-code-helloworld-sam

aws cloudformation package --template-file template.yaml  --s3-bucket arvins-code-helloworld-sam --output-template-file gen/template-generated.yaml


#output

arvins-mac @ ~/1-gitspace/aws/ud-dva-c02/code_v2023-04-07/sam/helloworld  (main)
 [46] → aws cloudformation package --template-file template.yaml  --s3-bucket arvins-code-helloworld-sam --output-template-file gen/template-generated.yaml
Uploading to 3bb682d0cb32dcd2c360601779c0b3ae  203 / 203.0  (100.00%)
Successfully packaged artifacts and wrote output template to file gen/template-generated.yaml.
Execute the following command to deploy the packaged template
aws cloudformation deploy --template-file /Users/arvins-mac/1-gitspace/aws/ud-dva-c02/code_v2023-04-07/sam/helloworld/gen/template-generated.yaml --stack-name <YOUR STACK NAME>


# or sam package same as above


#deploy
aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world-sam

#output
Waiting for changeset to be created..

Failed to create the changeset: Waiter ChangeSetCreateComplete failed: Waiter encountered a terminal failure state: For expression "Status" we matched expected path: "FAILED" Status: FAILED. Reason: Requires capabilities : [CAPABILITY_IAM]

aws cloudformation deploy --template-file gen/template-generated.yaml --stack-name hello-world-sam --capabilities CAPABILITY_IAM