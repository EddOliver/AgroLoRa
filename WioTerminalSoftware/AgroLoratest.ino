//EdOliver & Altaga

#include "TFT_eSPI.h" //TFT LCD library 
#include "DHT.h" // DHT library 
#include "disk91_LoRaE5.h"

int sensorPin = A0;
int sensorValue = 0;

Disk91_LoRaE5 lorae5(&Serial); // Where the AT command and debut traces are printed

#define Frequency DSKLORAE5_ZONE_US915
/*
Select your frequency band here.
DSKLORAE5_ZONE_EU868
DSKLORAE5_ZONE_US915
DSKLORAE5_ZONE_AS923_1
DSKLORAE5_ZONE_AS923_2
DSKLORAE5_ZONE_AS923_3
DSKLORAE5_ZONE_AS923_4
DSKLORAE5_ZONE_KR920
DSKLORAE5_ZONE_IN865
DSKLORAE5_ZONE_AU915
 */

uint8_t deveui[] = {0xXX, 0xX0, 0xX2, 0xXX, 0xXX, 0xXX, 0xXX, 0xXX};
uint8_t appeui[] = {0xXX, 0xXX, 0xXX, 0xX2, 0xXX, 0xXX, 0xXX, 0xXX};
uint8_t appkey[] = {0xXX, 0xXX, 0xXX, 0xXX, 0xXX, 0xXX, 0xXX, 0xXX, 0xXX, 0xXX, 0xXX, 0xXX, 0xXX, 0xXX, 0xXX, 0xXX};

//Definitions
#define DHTPIN A2 //Define signal pin of DHT sensor 
// #define DHTPIN PIN_WIRE_SCL //Use I2C port as Digital Port */
#define DHTTYPE DHT11 //Define DHT sensor type 

//Initializations
DHT dht(DHTPIN, DHTTYPE); //Initializing DHT sensor
TFT_eSPI tft; //Initializing TFT LCD
TFT_eSprite spr = TFT_eSprite(&tft); //Initializing buffer


void data_decord(int temp, int hum, int sensorValue, uint8_t data[6])
{ 
  data[0] = temp >> 8 & 0xFF;
  data[1] = temp & 0xFF;
  data[2] = hum >> 8 & 0xFF;
  data[3] = hum & 0xFF;
  data[4] = sensorValue >> 8 & 0xFF;
  data[5] = sensorValue & 0xFF;
}

void setup(void)
{ 
  Serial.begin(9600);
  uint32_t start = millis();
  while ( !Serial && (millis() - start) < 1500 );  // Open the Serial Monitor to get started or wait for 1.5"
  // init the library, search the LORAE5 over the different WIO port available
  if ( ! lorae5.begin(DSKLORAE5_SWSERIAL_WIO_P1) ) {
    Serial.println("LoRa E5 Init Failed");
    while(1); 
  }

  // Setup the LoRaWan Credentials
  if ( ! lorae5.setup(
        Frequency,
        deveui,
        appeui,
        appkey
     ) ){
    Serial.println("LoRa E5 Setup Failed");
    while(1);         
  }
  pinMode(WIO_LIGHT, INPUT); //Set light sensor pin as INPUT
  pinMode(WIO_BUZZER, OUTPUT); //Set buzzer pin as OUTPUT
  
  dht.begin(); //Start DHT sensor 
  tft.begin(); //Start TFT LCD
  tft.setRotation(3); //Set TFT LCD rotation
  spr.createSprite(TFT_HEIGHT,TFT_WIDTH); //Create buffer
}
 
void loop(void)
{
  int temp = dht.readTemperature(); //Assign variable to store temperature 
  int hum = dht.readHumidity(); //Assign variable to store humidity 
  int light = analogRead(WIO_LIGHT); //Assign variable to store light sensor values
  sensorValue = ((analogRead(sensorPin))/10.23);

  Serial.print("Soil Moisture: "); Serial.println(sensorValue);

  static uint8_t data[6] = { 0x00 };  //Use the data[] to store the values of the sensors

  data_decord(temp, hum, sensorValue, data);

  if ( lorae5.send_sync(              //Sending the sensor values out
        8,                            // LoRaWan Port
        data,                         // data array
        sizeof(data),                 // size of the data
        false,                        // we are not expecting a ack
        7,                            // Spread Factor
        14                            // Tx Power in dBm
       ) 
  ) {
      Serial.println("Uplink done");
      if ( lorae5.isDownlinkReceived() ) {
        Serial.println("A downlink has been received");
        if ( lorae5.isDownlinkPending() ) {
          Serial.println("More downlink are pending");
        }
      }
  }
  delay(15000);
}