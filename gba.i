# 1 "gba.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "gba.c"
# 1 "gba.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;






int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
void waitForVBlank();
# 42 "gba.h"
extern volatile unsigned short *videoBuffer;
# 70 "gba.h"
void setPixel(int col, int row, unsigned short color);
void drawRect(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 92 "gba.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 2 "gba.c" 2


unsigned volatile short *videoBuffer = (unsigned short *)0x6000000;



int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB) {
    return rowA <= rowB + heightB - 1 && rowA + heightA - 1 >= rowB && colA <= colB + widthB - 1 && colA + widthA - 1 >= colB;
}

void waitForVBlank() {
    while ((*(volatile unsigned short *)0x4000006) >= 160);
    while ((*(volatile unsigned short *)0x4000006) < 160);
}



void setPixel(int col, int row, unsigned short color) {
    videoBuffer[((row) * (240) + (col))] = color;
}

void drawRect(int col, int row, int width, int height, volatile unsigned short color) {
    for (int i = 0; i < height; i++) {
        for (int j = 0; j < width; j++) {
            setPixel(col + j, row + i, color);
        }
    }
}

void fillScreen(volatile unsigned short color) {
    for (int i = 0; i < 240 * 160; i++) {
        videoBuffer[i] = color;
    }
}
