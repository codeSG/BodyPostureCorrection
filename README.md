# BodyPostureCorrection

## Task1: Set-up and Test NodeMcu 

1. Open Arduino IDE & Go to Preferences Tab & update the "Additional Boards Manager URL" to     http://arduino.esp8266.com/stable/package_esp8266com_index.json.
2. Install the USB Driver for uploading file change board to node MCU 0.9 https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers
3. Select Board(NodeMcu0.9) and Port
4. Test Blink code (FIles-> Example-> Basics-> Blink)

Cheers! First MileStone is achieved. Your NodeMcu is working properly.

## Task2: Assemble MPU6050 Sensor circuit and Measure Body Angle

1. Join MPU6050 pins with NodeMCU as following(P.S. Please verify your connecting before supplying power):
  * VCC -> 3V3
  * GND -> GND
  * SCL -> D1
  * SDA -> D2
2. Upload Module1 code and Check output at Serial Monitor.
  
Yippee! We are one more step ahead. Ready!!

## Task3: Link Azure IoT Hub and Upload your data
1. Install the below libraries in Arduino Under Tools -> Manage Libraries:
  * AzureIoTHub
  * AzureIoTUtility
  * AzureIoTProtocol_MQTT
  * ArduinoJson 5.0.8(Please note the verson of Arduino JSON and downgrade if higher version is installed.)
2. Create an Iot Hub from Azure Portal
3. Create a new IoT device and Click on the created device and Notedown device primary connection string.
4. Open Config.h file from Module2 code  & update the below values:
* SSID Name of Wifi
* Password of Wifi
* Device ID(any unique integer)
* Connection String(noted above)
5. Download Device Explorer & install. https://aka.ms/aziotdevexp
6. Open Azure Portal, go to <your_iot_hub(created)>->SharedAccessPolicy->iothubowner, and copy primary connection string
7. Paste above connection string in Device Explorer and Monitor
8. Make necessary changes in message.ino file from Module1.

Horrayyy!! You are ready to deploy your code.
