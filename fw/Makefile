######### CFG  #########

DEVICE     = attiny85
AVRDUDE_PROGRAMMER = avrisp
AVRDUDE_BAUD = 19200
CLOCK      = 1000000

USB_PORT=/dev/tty.usbserial-FTTG8GP4


SOURCES = main.c 
########################


STTY=stty -f $(USB_PORT)
HUP=$(STTY) hupcl
AVRDUDE=avrdude -v -p $(DEVICE) -P $(USB_PORT) -c $(AVRDUDE_PROGRAMMER) -b $(AVRDUDE_BAUD)
COMPILE = avr-gcc -std=c99 -Wall -Os -DF_CPU=$(CLOCK) -mmcu=$(DEVICE)
TARGET=fw
OBJECTS=$(SOURCES:.c=.o)


all:	$(TARGET).hex

$(TARGET).hex: $(TARGET).elf
	rm -f $(TARGET).hex
	avr-objcopy -j .text -j .data -O ihex $(TARGET).elf $(TARGET).hex
	avr-size --format=avr --mcu=$(DEVICE) $(TARGET).elf


$(TARGET).elf: $(OBJECTS)
	$(COMPILE) -o $(TARGET).elf $(OBJECTS)


.c.o:
	$(COMPILE) -c $< -o $@
clean:
	rm -f $(TARGET).hex $(TARGET).elf $(OBJECTS)

flash:
	#$(HUP)
	$(AVRDUDE)   -U flash:w:$(TARGET).hex:a

reset:
	$(HUP)

dude:
	$(AVRDUDE) -t
cpp:
	$(COMPILE) -E main.c

