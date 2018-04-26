// ==========> NOTE: PLACE ABOVE "void setup(){}" <====================
//  void FlowSensorDispatch();
//  FlowSensor fs = FlowSensor(2,FlowSensorDispatch, lcd);
//  void FlowSensorDispatch() { fs.PULSE_COUNTER(); }
// =========================================================

#ifndef FLOWSENSOR_H
#define FLOWSENSOR_H

#include <Arduino.h>
#include <LiquidCrystal.h>

class FlowSensor
{
public:
	void PULSE_COUNTER()
	{ this->pulseCounter++; }
	
	FlowSensor( const uint8_t flowSensorPin , void (*interruptDispatch)( void ) );
	
	FlowSensor( const uint8_t flowSensorPin , void (*interruptDispatch)( void ) , LiquidCrystal &outputLCD , const uint8_t cols , const uint8_t rows );
	
	void run();
	
	void print();
	
	void LCDPrint();


private:
	void (*INTERRUPT_DISPATCHER)( void );
	
	uint8_t FLOW_SENSOR_PIN;
	uint8_t FLOW_SENSOR_INTERRUPT_PIN;
	
	LiquidCrystal *LCD;
	boolean       LCDEnabled = false;
	uint8_t       LCDRows    = 0;
	uint8_t       LCDCols    = 0;
	
	double calibrationFactor = 4.5; // The hall-effect flow sensor outputs approximately 4.5 pulses per second per litre/minute of flow.
	
	double        flowRate_L_min  = 0.0;
	double        flowRate_mL_sec = 0.0;
	double        total_mL        = 0.0;
	unsigned long prevTime        = 0;
	volatile byte pulseCounter    = 0;
	
	char outputStrings[3][20];
	
	const String mL_sec_str = " mL/sec";     // 7 chars
	const String L_min_str  = " L/min";      // 6 chars
	const String mL_str     = " mL";         // 3 chars
	String       tempStr    = "";
	
	int8_t mL_space;
	int8_t L_space;
	int8_t total_space;
	
	boolean firstPrint = true;
	
	
};

#endif //FLOWSENSOR_H

