
#include "ls1x.h"
#include "Config.h"
#include "ls1x_gpio.h"
#include "ls1x_latimer.h"
#include "esp8266.h"
#include "ls1c102_interrupt.h"

#define LED 20

int main(int arg, char *args[])
{

    esp8266_init();

    while(1)
    {
        gpio_write_pin(LED,1);
        delay_ms(100);
        gpio_write_pin(LED,0);
        delay_ms(100);
    }

    return 0;
}
