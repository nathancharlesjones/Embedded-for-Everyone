#include <Arduino.h>

void setup() {
  pinMode(15, OUTPUT);
  //digitalWrite(14, LOW);
}

void loop() {
  digitalToggle(15);
  delay(500);
}