#include <Arduino.h>
#include <LiquidCrystal.h>
#include "FlowSensor.h"

LiquidCrystal lcd( 8 , 9 , 4 , 5 , 6 , 7 );

void FlowSensorDispatch();

FlowSensor fs = FlowSensor( 2 , FlowSensorDispatch , lcd , 20 , 4 );

void FlowSensorDispatch()
{ fs.PULSE_COUNTER(); }

void setup()
{
	Serial.begin(38400);
	lcd.begin( 20 , 4 );
	lcd.clear();
	lcd.setCursor( 0 , 0 );
	lcd.print( "Testing" );
	delay( 100 );
}

void loop()
{
	fs.run();
	fs.print();
//	fs.LCDPrint();

	lcd.setCursor( 0 , 4 );
	lcd.print( ( millis() / 1000 ) + " sec" );
	delay( 100 );
}