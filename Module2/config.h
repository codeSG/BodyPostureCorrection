// Physical device information for board and sensor
#define DEVICE_ID "PostureDevice<id>"

// SSID and SSID password's length should < 32 bytes
#define SSID_LEN 32
#define PASS_LEN 32
#define CONNECTION_STRING_LEN 256

#define MESSAGE_MAX_LEN 256

/**
 * WiFi setup
 */
#define IOT_CONFIG_WIFI_SSID            "ssid"
#define IOT_CONFIG_WIFI_PASSWORD        "password"

/**
 * Find under Microsoft Azure IoT Suite -> DEVICES -> <your device> -> Device Details and Authentication Keys
 * String containing Hostname, Device Id & Device Key in the format:
 *  "HostName=<host_name>;DeviceId=<device_id>;SharedAccessKey=<device_key>"    
 */
#define IOT_CONFIG_CONNECTION_STRING    "deviceConnectionString"
