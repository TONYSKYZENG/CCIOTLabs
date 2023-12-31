# SUTDWIFI-AWS  Example

This example shows how ESP32-Wrover connects to AP with wpa2 enterprise encryption (i.e., SUTD-Wifi) and then interact with aws. Example does the following steps:

1. Install CA certificate which is optional.
2. Install client certificate and client key which is required in TLS method and optional in PEAP and TTLS methods.
3. Set identity of phase 1 which is optional.
4. Set user name and password of phase 2 which is required in PEAP and TTLS methods.
5. Enable wpa2 enterprise.
6. Connect to AP.
7. Once get the ip from SUTD-Wifi, connect to AWS and create MQTT topic cli1/example/topic
8. Display the cli1/example/topic subscription to ssd1306 OLEAD (128*64)
*Note:* 1. The certificates currently are generated and are present in examples.wifi/wpa2_enterprise/main folder.
        2. The expiration date of the certificates is 2027/06/05.
        3. Connecting to the PEAP AP like SUTD-Wifi requires a large memory, so this may be not valid for ESP32 modules without external sram.

## How to use Example

### Configuration ON THE SSD1306
```
idf.py menuconfig
```
Go to SSD1306 Configuration and do the following
* Check your interface (default is i2c for the Makepython board)
* Check your SCL and SDA (5,4, respectively for the Makepython board)
* If there is no rest pin, set it to -1
### Configuration on SUTD-Wifi

```
idf.py menuconfig
```
Go to 'Example Configuration' and do the follwoing:
* Set SSID of Access Point to connect in Example Configuration.
* Select EAP method: TLS, TTLS or PEAP (SUTD-Wifi uses PEAP).
* Select Phase2 method (only for TTLS).
* Enter EAP-ID.
* Enter Username (Your student id, only numbers) and Password (The password you use to log into myportal).
* Enable or disable Validate Server option. (DISABLE it for sutd wifi)
### Configuration on AWS
1. Go to AWS-IOT menu, click Manage->All devices->Things.
2. Follow the guide to create a new thing, use all default settings.
3. When AWS asks you to create a policy, select "allow", "*", "*".
4. Download the certificates from AWS. Then copy the .pem.key and .pem.crt files to the main/certs subdirectory of the example. Rename them by removing the device-specific prefix - the new names are client.key and client.crt.

### Find & Set AWS Endpoint Hostname 

Your AWS IoT account has a unique endpoint hostname to connect to. To find it, open the AWS IoT Console and click the "Settings" button on the BOTTOM LEFT side (not the general setting of your account). The endpoint hostname is shown under the "Device data endpoint" heading on this page.

Run `idf.py menuconfig`. Under `Example Configuration`, set the `MQTT Broker Endpoint` to the host name.


### Build and Flash the project.

```
idf.py -p PORT flash monitor
```
   
