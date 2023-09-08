# AWS CAMERA ESP32-CAM  Example

This example shows how ESP32-CAM connects to AP called RPI4-AP. Example does the following steps:

1. Connect to AP (Assuming it is opened by RPI under WPA).
2. Turn on the camera
3. Set up a http server
4. Once pressed the button, upload the picture to aws s3
5. Once upload is done, start an image to text task
6. Once received the result, determining wheter or not turn on the light

## How to use this example
### Hardware connection
This example assumes the Button to be GPIO12, and connect it to VCC 3.3 V (disconnected soon later) will be considered as a 'press down'.
### Make sure you have enabled spi ram!!
Go to Component config->ESP32-specific->Support for external, SPI-connected RAM
Make sure it is open!!!
### Configuration on AP

```
idf.py menuconfig
```
Go to Example Configuration and do the follwoing:
* Set Wifi SSID and passport of Access Point to connect in Example Configuration.
*Note* This code assumes using WIFI_AUTH_WPA_PSK, if using other authmode, please change main/station_main.c
* This example assume the wifi SSID on RPI to be `RPI4-AP', and password to be 'Miter1.417'
### Configuration on AWS
1. Go to AWS-IOT menu, click Manage->All devices->Things.
2. Follow the guide to create a new thing, use all default settings.
3. When AWS asks you to create a policy, select "allow", "*", "*".
4. Download the certificates from AWS. Then copy the .pem.key and .pem.crt files to the main/certs subdirectory of the example. Rename them by removing the device-specific prefix - the new names are client.key and client.crt.

### Find & Set AWS Endpoint Hostname 

Your AWS IoT account has a unique endpoint hostname to connect to. To find it, open the AWS IoT Console and click the "Settings" button on the BOTTOM LEFT side (not the general setting of your account). The endpoint hostname is shown under the "Device data endpoint" heading on this page.

Run `idf.py menuconfig`. Under `Example Configuration`, set the `MQTT Broker Endpoint` to the host name.
## If you want to use SUTD-Wifi instead of RPI4 AP
Please consider combine this branch with lab1_3 branch, a template main function is called wifi_enterprise_main.c for this. But you have to fix it one your self
### Build and Flash the project.

```
idf.py -p PORT flash monitor
```
   
