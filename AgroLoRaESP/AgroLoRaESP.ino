#include "DHT.h"
#define DHTPIN A1
#define DHTTYPE DHT22

DHT dht(DHTPIN, DHTTYPE);

String EVTOK = "+EVT:JOINED";
char* string2char(String command);
void start();
void sendData(String myData);
unsigned long tick;
int interval = 30000;

void setup() {
  // initialize both serial ports:
  Serial.begin(115200);
  Serial1.begin(115200);
  pinMode(13, OUTPUT);
  digitalWrite(13, LOW);
  dht.begin();
  start();
  tick = millis();
}

void loop() {
  if (Serial1.available()) {
    String inString = Serial1.readString();
    if (inString.indexOf(EVTOK) > 0) {
      Serial.println("OK Module");
      digitalWrite(13, HIGH);
    }
    Serial.println(inString);
  }
  if ( millis() > (tick + interval) ) {

    unsigned int moisture = analogRead(A0);
    byte m = (moisture/16) >> 8;
    float h = dht.readHumidity();
    float f = dht.readTemperature(true);
    String sendThis = String(m) + "2C" + String(byte(int(h))) + "2C" + String(byte(int(f)));
    sendData( sendThis ); //
    Serial.println(sendThis);
    tick = millis();
  }
}

void start() {
  delay(10000);
  Serial1.println("AT+JOIN=1");
  delay(10000);
  Serial1.println("AT+JOIN=1");
}

void sendData(String myData) {
  String command = "AT+SEND=1:1:" + myData;
  Serial1.println(command);
}
