# SUTDWIFI-AWS-CAMERA  Example (Part a)

This example shows how ESP-CAM connects to AP with wpa2 enterprise encryption (i.e., SUTD-Wifi) and start a video webserver. Example does the following steps:

1. Install CA certificate which is optional.
2. Install client certificate and client key which is required in TLS method and optional in PEAP and TTLS methods.
3. Set identity of phase 1 which is optional.
4. Set user name and password of phase 2 which is required in PEAP and TTLS methods.
5. Enable wpa2 enterprise.
6. Connect to AP.
7. Once get the ip from SUTD-Wifi, start the webserver of video
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
* For rest pin, set it to -1
### Configuration on SUTD-Wifi

```
idf.py menuconfig
```
Go to 'CCIoT Class Configuration' and do the follwoing:
* Check SSID of Access Point to connect in Example Configuration to be 'SUTD-Wifi'.
* Select EAP method: TLS, TTLS or PEAP (SUTD-Wifi uses PEAP).
* Select Phase2 method (only for TTLS).
* Enter EAP-ID as your student id @mymail.sutd.edu.sg.
* Enter Username (Your student id, only numbers) and Password (The password you use to log into myportal).
* Enable or disable 'Validate Server' option. (DISABLE it for sutd wifi)
### Build and Flash the project.
* connect IO0 and GND and press the RST button
* Run the following

```
idf.py flash
```
### Debug and monitor
* Assuming you have just finish the flash and IO0 is still connected with GND, if not, connect them back
* Press the RST Button and run the following

```
idf.py monitor
```
* After you see some words in organge, saying 'idf_monitor xxxx', disconnect IO0 and GND, and press RST again
* You will see the words change into green, which means the ESP-CAM starts to work
* Find the IP when it's printed, copy/paste it to your web browser, you will see the video 

