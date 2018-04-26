#include "FlowSensor.h"

FlowSensor::FlowSensor( uint8_t flowSensorPin , void (*interruptDispatch)( void ) )
{
	this->INTERRUPT_DISPATCHER = interruptDispatch;

//	this->FLOW_SENSOR_PIN           = flowSensorPin;
//	this->FLOW_SENSOR_INTERRUPT_PIN = (uint8_t) digitalPinToInterrupt( flowSensorPin );
	
	this->FLOW_SENSOR_PIN           = 2;
	this->FLOW_SENSOR_INTERRUPT_PIN = 0;
	
	pinMode( this->FLOW_SENSOR_PIN , INPUT );
	digitalWrite( this->FLOW_SENSOR_PIN , HIGH );
	
	// The Hall-effect sensor is connected to pin 2 which uses interrupt 0.
	// Configured to trigger on a FALLING state change (transition from HIGH state to LOW state)
	attachInterrupt( this->FLOW_SENSOR_INTERRUPT_PIN , this->INTERRUPT_DISPATCHER , FALLING );
}


FlowSensor::FlowSensor( const uint8_t flowSensorPin , void (*interruptDispatch)( void ) , LiquidCrystal &outputLCD , const uint8_t cols , const uint8_t rows )
		: FlowSensor( flowSensorPin , interruptDispatch )
{
	this->LCD = &outputLCD; // <-- This is weird, but it is the only way to pass the class LCD to a library.
	this->LCD->begin( cols , rows );
	this->LCD->clear();
	
	this->LCDEnabled = true;
	this->LCDCols    = cols;
	this->LCDRows    = rows;
	
	this->mL_space    = cols - mL_sec_str.length();
	this->L_space     = cols - L_min_str.length();
	this->total_space = cols - mL_str.length();
}

void FlowSensor::run()
{
	// Runs once per second. Disable the interrupt and calculates the flow rate.
	if ( ( millis() - this->prevTime ) > 1000 )
	{
		detachInterrupt( this->FLOW_SENSOR_INTERRUPT_PIN );
		
		// ====================> CALCULATION(s)< ====================
		
		// Because this loop may not complete in exactly 1 second intervals. We calculate
		// the number of milliseconds that have passed since the last execution and use
		// this to scale the output.
		this->flowRate_L_min  = ( ( ( 1000.0 / ( millis() - this->prevTime ) ) * this->pulseCounter ) / this->calibrationFactor );
		this->flowRate_mL_sec = ( ( this->flowRate_L_min / 60.0 ) * 1000.0 );
		this->total_mL += this->flowRate_mL_sec;
		
		// ====================> SET/RESET(s)< ====================
		
		// During a disabled interrupt the "millis()" function won't actually be incrementing.
		// However, the return the value is the time right before interrupt.
		this->prevTime     = millis();
		this->pulseCounter = 0;
		
		this->LCDPrint();
		
		attachInterrupt( this->FLOW_SENSOR_INTERRUPT_PIN , this->INTERRUPT_DISPATCHER , FALLING );
	}
}

void FlowSensor::print()
{
	String flow_mL_per_sec = String( this->flowRate_mL_sec ) + mL_sec_str;
	String flow_L_per_min  = String( this->flowRate_L_min ) + L_min_str;
	String total_mL        = String( this->total_mL ) + mL_str;
	
	Serial.println( flow_mL_per_sec + " | " + flow_L_per_min + " | " + total_mL );
}

void FlowSensor::LCDPrint()
{
	if ( this->LCDEnabled )
	{
		
		if ( this->firstPrint )
		{
			this->firstPrint = false;
			this->LCD->clear();
			
			if ( this->LCDRows >= 1 ) // mL/sec
			{
				this->LCD->setCursor( 0 , 0 );
				for ( int i = 0 ; i < this->mL_space ; i++ )
					this->LCD->print( ' ' );
				this->LCD->print( mL_sec_str );
			}
			
			if ( this->LCDRows >= 2 ) // L/min
			{
				this->LCD->setCursor( 0 , 1 );
				for ( int i = 0 ; i < this->L_space ; i++ )
					this->LCD->print( ' ' );
				this->LCD->print( L_min_str );
			}
			
			if ( this->LCDRows >= 3 ) // total
			{
				this->LCD->setCursor( 0 , 2 );
				for ( int i = 0 ; i < this->total_space ; i++ )
					this->LCD->print( ' ' );
				this->LCD->print( mL_str );
			}
		}
		
		else
		{
			if ( this->LCDRows >= 1 ) // mL/sec
			{
				this->LCD->setCursor( 0 , 0 );
				this->tempStr = String( this->flowRate_mL_sec );
				for ( int i = 0 ; i < this->mL_space - this->tempStr.length() ; i++ )
					this->LCD->print( ' ' );
				this->LCD->print( this->tempStr );
			}
			
			if ( this->LCDRows >= 2 ) // L/min
			{
				this->LCD->setCursor( 0 , 1 );
				this->tempStr = String( this->flowRate_L_min );
				for ( int i = 0 ; i < this->L_space - this->tempStr.length() ; i++ )
					this->LCD->print( ' ' );
				this->LCD->print( this->tempStr );
			}
			
			if ( this->LCDRows >= 3 ) // total
			{
				this->LCD->setCursor( 0 , 2 );
				this->tempStr = String( this->total_mL );
				for ( int i = 0 ; i < this->total_space - this->tempStr.length() ; i++ )
					this->LCD->print( ' ' );
				this->LCD->print( this->tempStr );
			}
		}
	}
}