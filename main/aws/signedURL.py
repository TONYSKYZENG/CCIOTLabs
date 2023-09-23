import boto3
from botocore.client import Config
import json
import uuid

def lambda_handler(event, context):
    bucket_name = '<Your bucket name>'
    file_name = str(uuid.uuid4()) + '.jpg'

    mqtt = boto3.client('iot-data', region_name='ap-southeast-1')
    s3 = boto3.client('s3',config=Config(signature_version='s3v4')) 

    url = s3.generate_presigned_url('put_object', Params={'Bucket':bucket_name, 'Key':file_name}, ExpiresIn=600, HttpMethod='PUT')
    # command = "curl --request PUT --upload-file {} '{}'".format(file_name, url)
    # print(command) # for local testing purpose
    # print(file_name + '/' + url[8:]) # for local testing purposes

    response = mqtt.publish(
            topic='esp32/sub/url',
            qos=0,
            payload=file_name + '/' + url[8:]
        )