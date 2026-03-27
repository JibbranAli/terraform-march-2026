import boto3
import os

sns = boto3.client('sns')

def handler(event, context):
    sns.publish(
        TopicArn=os.environ['SNS_ARN'],
        Message="PROJECT BUILD "
    )

