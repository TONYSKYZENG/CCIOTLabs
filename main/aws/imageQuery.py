import json
import boto3

def lambda_handler(event, context, min_confidence=90):
    client=boto3.client('rekognition')
    file_name = str(event['payload'])
    response=client.detect_text(Image={'S3Object':{'Bucket':"<Yout bucket id>",'Name':file_name}})
    detectedText = response['TextDetections']
    print("Congratulations! You just fetched text from the image successfully. Total number of responses fetched from the given image {}".format(len(detectedText)))
    mqtt = boto3.client('iot-data', region_name='ap-southeast-1')
    results=''
    #Iterate through detectedText to get the required name/value pairs. 
    for text in detectedText:
        #Get DetectedText
        print('Detected Text:' + text['DetectedText'], end=" ")
        #Get the Confidence 
        print('Confidence:' + "{}".format(round(text['Confidence'])) + '%', end=" ")
        #Get the type of the text
        print('Text Type:' + text['Type'])
        if(float(text['Confidence'])>90):
            results+=text['DetectedText']+" "
        print("-")
    response = mqtt.publish(
            topic='esp32/pub/data',
            qos=0,
            payload=results
        )
    return "Congratulations! You just fetched text from Image."

def main():
    test = lambda_handler(event, context)


if __name__ == "__main__":
    main()
