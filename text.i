# 1 "text.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "text.c"
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
# 2 "text.c" 2
# 1 "text.h" 1


void drawChar(int col, int row, char ch, unsigned short color);
void drawString(int col, int row, char *str, unsigned short color);
# 3 "text.c" 2
# 1 "font.h" 1


extern const unsigned char fontdata_6x8[12288];
# 4 "text.c" 2


void drawChar(int col, int row, char ch, unsigned short color) {
    for (int c = 0; c < 6; c++) {
        for (int r = 0; r < 8; r++) {
            if (fontdata_6x8[(48 * ch + c + 6 * r)]) setPixel(col + c, row + r, color);
        }
    }
}


void drawString(int col, int row, char *str, unsigned short color) {
    int i = 0;
    while (*(str + i) != '\0') {
        drawChar(col + (i * 6), row, *(str + i), color);
        i++;
    }
}
