#include <ArduinoJson.h>
#include <Wire.h>

// declare parameters


void initAcce(){
  //MPU6050 sensor setup part
}
void readValues(){
  //MPU6050 sensor loop part
}



bool readMessage(int messageId, char *payload)
{
    readValues();
    
    StaticJsonBuffer<MESSAGE_MAX_LEN> jsonBuffer;
    JsonObject &root = jsonBuffer.createObject();
    root["deviceId"] = DEVICE_ID;
    root["messageId"] = messageId;
    
    if (std::isnan(x))
    {
        root["x"] = NULL;
    }
    else
    {
        root["x"] = x;
    }
    
    if (std::isnan(y))
    {
        root["y"] = NULL;
    }
    else
    {
        root["y"] = y;
    }
    
    if (std::isnan(z))
    {
        root["z"] = NULL;
    }
    else
    {
        root["z"] = z;
    }
    root.printTo(payload, MESSAGE_MAX_LEN);
    
    return true;
}
