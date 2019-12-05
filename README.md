# BodyPostureCorrection

## Task1: Set-up and Test NodeMcu 

1. [To Support the Current Hardware] Open Arduino IDE & File Menu -> Go to Preferences Tab & update the "Additional Boards Manager URLs" to     http://arduino.esp8266.com/stable/package_esp8266com_index.json.
2. Install esp8266 from tools -> board manager 
3. Install the USB Driver for uploading file change board to node MCU 0.9 https://www.silabs.com/products/development-tools/software/usb-to-uart-bridge-vcp-drivers
4. Select Tools -> Board(NodeMcu0.9) and then connect the Microcontroller and then select the Port(“COM3”)
5. Test Blink code (FIles-> Example-> Basics-> Blink) and upload (upload – just to test)


Cheers! First MileStone is achieved. Your NodeMcu is working properly.

## Task2: Connect MPU6050 Sensor with Nodemcu  to Measure Body Angle

1. Join MPU6050 pins with NodeMCU as following(P.S. Please verify your connecting before supplying power):
  * VCC -> 3V3
  * GND -> GND
  * SCL -> D1
  * SDA -> D2
2. Clone the repository https://github.com/codeSG/BodyPostureCorrection 
3. Upload Module1 code and Check output at Serial Monitor.

  
Yippee! We are one more step ahead. Ready!!

## Task3: Link Azure IoT Hub and Upload your data
1. Install the below libraries in Arduino Under Tools -> Manage Libraries (kind of plug-ins):
  * AzureIoTHub (Latest)
  * AzureIoTUtility (Latest)
  * AzureIoTProtocol_MQTT (Latest)
  * ArduinoJson 5.0.8 [Please note the verson of Arduino JSON and downgrade if higher version is installed.]

2. (N/A) Create an Iot Hub from Azure Portal
3. (N/A) Create a new IoT device and Click on the created device and Notedown device primary connection string.
4. Open Config.h file from Module2 code  & update the below values:
* SSID Name of Wifi
* Password of Wifi
* Device ID (One uniquely chosen from shared Excel)
* Connection String (noted above from Excel for respective DeviceId)

5. Download Device Explorer (FileName – “SetupDeviceExplorer.msi”) from https://aka.ms/aziotdevexp & install.
6. (N/A) Open Azure Portal, go to <your_iot_hub(created)>->SharedAccessPolicy->iothubowner, and copy primary connection string(HostName=garagepos01.azure-devices.net;SharedAccessKeyName=iothubowner;SharedAccessKey=WIhMVLoMWfEfpcnaAT92PAnPbGIqRgdaRTLKeZzicLw=)
7. Paste above connection string in Device Explorer and Monitor
8. Make necessary changes in message.ino file from Module1.

Horrayyy!! You are ready to deploy your code.
