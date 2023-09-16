# SUTDWIFI-AWS  Example (Part a)

This example shows how ESP32-Wrover (e.g., MakePython Board) connects to AP with wpa2 enterprise encryption (i.e., SUTD-Wifi). Example does the following steps:

1. Install CA certificate which is optional.
2. Install client certificate and client key which is required in TLS method and optional in PEAP and TTLS methods.
3. Set identity of phase 1 which is optional.
4. Set user name and password of phase 2 which is required in PEAP and TTLS methods.
5. Enable wpa2 enterprise.
6. Connect to AP.
7. Once get the ip from SUTD-Wifi, display its Ip
8. Keep showing the temperature from ds18b20
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
### Connect to the ds18b20
Module Pin/MakePython Pin
* VCC->3v3
* D0/IO21
* GND/GMD
### Build and Flash the project.

```
idf.py -p PORT flash monitor
```
   
### Expected output
1. 'Connecting' is displayed at the OLED once booting
2. 'Connected' will remove the 'Connecting' once you can successfully connect to SUTD-Wifi, and you will see tour IP
3. The temperature readings is displayed on OLED and updated every second.
### Known Issues
Please disconnect the ds18b20 module when flashing, if there are some errors.

   
