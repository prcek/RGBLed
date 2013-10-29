#include <avr/io.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include <avr/power.h>
#include <avr/interrupt.h>

#define LED_R 0
#define LED_G 1
#define LED_B 2

#define SEND_PIN 3
#define REC_PIN 4

#define LED_R_ON PORTB |= _BV(LED_R)
#define LED_R_OFF PORTB &= ~_BV(LED_R)
#define LED_R_SETUP DDRB |= _BV(LED_R)

#define LED_G_ON PORTB |= _BV(LED_G)
#define LED_G_OFF PORTB &= ~_BV(LED_G)
#define LED_G_SETUP DDRB |= _BV(LED_G)

#define LED_B_ON PORTB |= _BV(LED_B)
#define LED_B_OFF PORTB &= ~_BV(LED_B)
#define LED_B_SETUP DDRB |= _BV(LED_B)


#define SEND_OUTPUT DDRB |= _BV(SEND_PIN)
#define SEND_LOW PORTB &= ~_BV(SEND_PIN)
#define SEND_HIGH PORTB |= _BV(SEND_PIN)

#define REC_INPUT DDRB &= ~_BV(REC_PIN)
#define REC_OUTPUT DDRB |= _BV(REC_PIN)
#define REC_LOW PORTB &= ~_BV(REC_PIN)
#define REC_HIGH PORTB |= _BV(REC_PIN)
#define REC_READ (PINB & _BV(REC_PIN))


void flash() {
	LED_R_ON;
	_delay_ms(100);
	LED_R_OFF;
	_delay_ms(400);
}
void flash_fast() {
	LED_R_ON;
	_delay_ms(100);
	LED_R_OFF;
	_delay_ms(50);
}

///////// CAPACITIVE SENSOR TEST //////////
long do_sense() {
	long total = 0;
	long timeout = 10000;

	SEND_LOW;       //set sendpin to LOW
	int loops = 10;

	while(loops--) {


		REC_INPUT;      // set receivePin to input
		REC_LOW;        // set receivePin Register low to make sure pullups are off
		REC_OUTPUT;     // set pin to OUTPUT - pin is now LOW AND OUTPUT
		REC_INPUT;      // set pin to INPUT 

		SEND_HIGH;         // set send Pin High
		while ( (!REC_READ) && (total < timeout) ) {
			total++;
		}
			
		if (total>=timeout) {
			return -1;
		}  

		REC_HIGH; // set receive pin HIGH - turns on pullup
		REC_OUTPUT; // set pin to OUTPUT - pin is now HIGH AND OUTPUT
		REC_INPUT; // set pin to INPUT 
		REC_LOW; // turn off pullup
		
		SEND_LOW; // set send Pin LOW	
		
		while ( (REC_READ) && (total < timeout) ) {
			total++;
		}
			
		if (total>=timeout) {
			return -1;
		}  
	}

	return total;

}

static long sense_th = 0;

void do_calib() {
	long t = 0;
	int loops = 10;
	while(loops--) {
		t += do_sense();
	}
	sense_th = (t * 102) / 1000;
}

int do_read() {
	long t = do_sense();
	if (t < 0) return -1;
	if (t > sense_th) return 1;
	return 0;
}

///////// RGB test ///////////
static int on = 0;
ISR(TIMER0_OVF_vect) {
	if (on) {
		LED_R_OFF;
		on = 0;
	} else {
		LED_R_ON;
		on = 1;
	}
}



void rgb_setup() {
//	cli();

	// FastPWM a clk/1024 prescaler
	TCCR0A = _BV(WGM01) | _BV(WGM00);  
	TCCR0B = _BV(WGM02) | _BV(CS02) | _BV(CS00); 
	OCR0A = 50; //TOP value

	TCNT0 = 0; // init value
	TIMSK = _BV(TOIE0);
	sei();

}



int main(void)
{
    LED_R_SETUP; 
    LED_G_SETUP; 
    LED_B_SETUP; 

    LED_R_ON;
    LED_G_ON;
    LED_B_ON;

   

    rgb_setup();

    for(;;) {
    	
    }


    SEND_OUTPUT;    //set sendpin to OUTPUT

   flash();
   flash();
   	do_calib();
   flash();


    for(;;) {
	int r = do_read();
	if (r<0) {
		flash_fast();
	} else if (r>0) {
		LED_R_ON;
	} else {
		LED_R_OFF;
	}
	
    }
    return 0;   /* never reached */
}
