#ifndef _LCD_H_
#define _LCD_H_
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "esp_system.h"
#include "driver/spi_master.h"
#include "driver/gpio.h"

#include <stdint.h>
#define WHITE         	 0xFFFF
#define BLACK         	 0x0000	  
#define BLUE         	 0x001F  
#define BRED             0XF81F
#define GRED 			 0XFFE0
#define GBLUE			 0X07FF
#define RED           	 0xF800
#define MAGENTA       	 0xF81F
#define GREEN         	 0x07E0
#define CYAN          	 0x7FFF
#define YELLOW        	 0xFFE0
#define BROWN 			 0XBC40 //棕色
#define BRRED 			 0XFC07 //棕红色
#define GRAY  			 0X8430 //灰色

#ifdef CONFIG_IDF_TARGET_ESP32
#define LCD_HOST    HSPI_HOST
#define DMA_CHAN    2

#define PIN_NUM_MISO 25
#define PIN_NUM_MOSI 23
#define PIN_NUM_CLK  19
#define PIN_NUM_CS   22

#define PIN_NUM_DC   21
#define PIN_NUM_RST  18
#define PIN_NUM_BCKL 
#elif defined CONFIG_IDF_TARGET_ESP32S2
#define LCD_HOST    SPI2_HOST
#define DMA_CHAN    LCD_HOST

#define PIN_NUM_MISO -1
#define PIN_NUM_MOSI 40
#define PIN_NUM_CLK  41
#define PIN_NUM_CS   -1

#define PIN_NUM_DC   38
#define PIN_NUM_RST  39
#define PIN_NUM_BCKL -1
#elif defined CONFIG_IDF_TARGET_ESP32C3
#define LCD_HOST    SPI2_HOST
#define DMA_CHAN    LCD_HOST

#define PIN_NUM_MISO 2
#define PIN_NUM_MOSI 7
#define PIN_NUM_CLK  6
#define PIN_NUM_CS   10

#define PIN_NUM_DC   9
#define PIN_NUM_RST  18
#define PIN_NUM_BCKL 19
#endif
#define PARALLEL_LINES 1

/*
 The LCD needs a bunch of command/argument values to be initialized. They are stored in this struct.
*/
typedef struct {
    uint8_t cmd;
    uint8_t data[16];
    uint8_t databytes; //No of data in data; bit 7 = delay after set; 0xFF = end of cmds.
} lcd_init_cmd_t;

typedef enum {
    LCD_TYPE_ILI = 1,
    LCD_TYPE_ST,
    LCD_TYPE_MAX,
} type_lcd_t;
void lcd_init(void);
uint16_t lcd_genRGBPlate(uint8_t r,uint8_t g,uint8_t b);
void lcd_showString(uint16_t x,uint16_t y,const uint8_t *p,uint16_t color);
//Color:要清屏的填充色
void lcd_clear(spi_device_handle_t spi,uint16_t color);
void lcd_updataFull(spi_device_handle_t spi,uint16_t *buf);
#endif