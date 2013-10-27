#include <avr/io.h>
#include <avr/sleep.h>
#include <util/delay.h>
#include <avr/power.h>
#include <avr/interrupt.h>

#define LED_R 0
#define LED_G 1
#define LED_B 2

#define SEND_PIN 3
#define READ_PIN 4

#define LED_R_ON PORTB |= _BV(LED_R)
#define LED_R_OFF PORTB &= ~_BV(LED_R)
#define LED_R_SETUP DDRB |= _BV(LED_R)

#define LED_G_ON PORTB |= _BV(LED_G)
#define LED_G_OFF PORTB &= ~_BV(LED_G)
#define LED_G_SETUP DDRB |= _BV(LED_G)

#define LED_B_ON PORTB |= _BV(LED_B)
#define LED_B_OFF PORTB &= ~_BV(LED_B)
#define LED_B_SETUP DDRB |= _BV(LED_B)



#define BTN_READ (PINB & _BV(READ_PIN))
#define BTN_SETUP  DDRB &= ~_BV(READ_PIN); PORTB |= _BV(READ_PIN)


int main(void)
{
   // BTN_SETUP;
    LED_R_SETUP; 
    LED_G_SETUP; 
    LED_B_SETUP; 

    LED_R_ON;
    LED_G_ON;
    LED_B_ON;


    for(;;) {
    }
    return 0;   /* never reached */
}
