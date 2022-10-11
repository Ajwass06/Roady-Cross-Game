# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
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
# 2 "game.c" 2
# 1 "game.h" 1
typedef struct {
    int col;
    int row;
    int prevCol;
    int prevRow;
    int width;
    int height;
    int color;
    int direction;
    int active;
} CARS;

typedef struct {
    int col;
    int row;
    int oldCol;
    int oldRow;
    int size;
    int color;
    int active;
} COINS;

typedef struct {
    int headCol; int headRow; int prevHeadC; int prevHeadR;
    int snoutCol; int snoutRow; int prevSnoutC; int prevSnoutR;
    int noseCol; int noseRow; int prevNoseC; int prevNoseR;
    int leftEarCol; int leftEarRow; int prevLeftEarC; int prevLeftEarR;
    int rightEarCol; int rightEarRow; int prevRightEarC; int prevRightEarR;
    int bodyCol; int bodyRow; int prevBodyC; int prevBodyR;
    int tailCol; int tailRow; int prevTailC; int prevTailR;
    int directionX; int directionY;
} ANIMAL;

typedef struct {
    int col;
    int row;
    int width;
    int height;
    int dirX;
    int dirY;
    int color;
    int prevCol;
    int prevRow;
} BONE;






extern int lives;
extern int coinNum;
extern int heldCount;

extern CARS cars[3];
extern COINS coins[5];
extern ANIMAL animal[1];
extern BONE bone[1];

void initializeGame();
void updateGame();
void drawGame();
void background();

void initializeAnimal();
void drawAnimal();
void eraseAnimal(int col, int row);
void eraseAnimal2(int col, int row);
void updateAnimal(BONE* bPoint);

void initializeCars();
void drawCars(CARS* pointer);
void updateCars(CARS* pointer);

void initializeCoins();
void drawCoins(COINS* pointer);
void updateCoins(COINS* pointer);

void initializeBone();
void drawBone();
void eraseBone(int col, int row);
void updateBone(BONE* pointer);
# 3 "game.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 4 "game.c" 2
# 1 "sound.h" 1
# 75 "sound.h"
enum {
  REST = 0,
  NOTE_C2 =44,
  NOTE_CS2 =157,
  NOTE_D2 =263,
  NOTE_DS2 =363,
  NOTE_E2 =457,
  NOTE_F2 =547,
  NOTE_FS2 =631,
  NOTE_G2 =711,
  NOTE_GS2 =786,
  NOTE_A2 =856,
  NOTE_AS2 =923,
  NOTE_B2 =986,
  NOTE_C3 =1046,
  NOTE_CS3 =1102,
  NOTE_D3 =1155,
  NOTE_DS3 =1205,
  NOTE_E3 =1253,
  NOTE_F3 =1297,
  NOTE_FS3 =1339,
  NOTE_G3 =1379,
  NOTE_GS3 =1417,
  NOTE_A3 =1452,
  NOTE_AS3 =1486,
  NOTE_B3 =1517,
  NOTE_C4 =1547,
  NOTE_CS4 =1575,
  NOTE_D4 =1602,
  NOTE_DS4 =1627,
  NOTE_E4 =1650,
  NOTE_F4 =1673,
  NOTE_FS4 =1694,
  NOTE_G4 =1714,
  NOTE_GS4 =1732,
  NOTE_A4 =1750,
  NOTE_AS4 =1767,
  NOTE_B4 =1783,
  NOTE_C5 =1798,
  NOTE_CS5 =1812,
  NOTE_D5 =1825,
  NOTE_DS5 =1837,
  NOTE_E5 =1849,
  NOTE_F5 =1860,
  NOTE_FS5 =1871,
  NOTE_G5 =1881,
  NOTE_GS5 =1890,
  NOTE_A5 =1899,
  NOTE_AS5 =1907,
  NOTE_B5 =1915,
  NOTE_C6 =1923,
  NOTE_CS6 =1930,
  NOTE_D6 =1936,
  NOTE_DS6 =1943,
  NOTE_E6 =1949,
  NOTE_F6 =1954,
  NOTE_FS6 =1959,
  NOTE_G6 =1964,
  NOTE_GS6 =1969,
  NOTE_A6 =1974,
  NOTE_AS6 =1978,
  NOTE_B6 =1982,
  NOTE_C7 =1985,
  NOTE_CS7 =1989,
  NOTE_D7 =1992,
  NOTE_DS7 =1995,
  NOTE_E7 =1998,
  NOTE_F7 =2001,
  NOTE_FS7 =2004,
  NOTE_G7 =2006,
  NOTE_GS7 =2009,
  NOTE_A7 =2011,
  NOTE_AS7 =2013,
  NOTE_B7 =2015,
  NOTE_C8 =2017
} NOTES;
# 5 "game.c" 2

CARS cars[3];
COINS coins[5];
ANIMAL animal[1];
BONE bone[1];

int headW = 7;
int headH = 5;
int snoutSize = 3;
int noseW = 3;
int noseH = 1;
int earW = 3;
int earH = 2;
int bodyW = 5;
int bodyH = 7;
int tailW = 1;
int tailH = 2;

int lives = 3;
int coinNum = 0;
int coinsLeft;

int heldCount = 0;
int dropCount = 0;

void initializeGame() {
    initializeAnimal();
    initializeCars();
    initializeCoins();
    initializeBone();
    coinsLeft = 5;
}

void background() {
    drawRect(0, 140, 240, 20, ((6) | (17)<<5 | (6)<<10));
    drawRect(0, 40, 240, 100, ((7) | (7)<<5 | (7)<<10));
    drawRect(0, 0, 240, 40, ((6) | (17)<<5 | (6)<<10));
}

void updateGame() {
    BONE* bPoint = &bone[0];
    updateBone(bPoint);
    updateAnimal(bPoint);
    for (int i = 0; i < 3; i++) {
        CARS* pointer = &cars[i];
        updateCars(pointer);
    }
    for (int i = 0; i < 5; i++) {
        if (coins[i].active != 0) {
            COINS* pointer = &coins[i];
            updateCoins(pointer);
        }
    }
}

void drawGame() {
    drawAnimal();
    for (int i = 0; i < 5; i++) {
        if (coins[i].active != 0) {
            COINS* pointer = &coins[i];
            drawCoins(pointer);
        }
    }
    for (int i = 0; i < 3; i++) {
        CARS* pointer = &cars[i];
        drawCars(pointer);
    }
    BONE* pointer = &bone[0];
    drawBone(pointer);
}

void initializeAnimal() {
    animal[0].headCol = 240 / 2 + 1;
    animal[0].headRow = 145;
    animal[0].snoutCol = 240 / 2 + 3;
    animal[0].snoutRow = 143;
    animal[0].noseCol = 240 / 2 + 3;
    animal[0].noseRow = 142;
    animal[0].leftEarCol = 240 / 2 - 1;
    animal[0].leftEarRow = 148;
    animal[0].rightEarCol = 240 / 2 + 7;
    animal[0].rightEarRow = 148;
    animal[0].bodyCol = 240 / 2 + 2;
    animal[0].bodyRow = 150;
    animal[0].tailCol = 240 / 2 + 4;
    animal[0].tailRow = 156;
}

void updateAnimal(BONE* bPoint) {
    if (heldCount % 2 == 0) {
        animal[0].directionX = 3;
        animal[0].directionY = 3;
    } else {
        animal[0].directionX = 7;
        animal[0].directionY = 7;
    }
    if ((!(~(oldButtons) & ((1<<6))) && (~buttons & ((1<<6))))) {
        animal[0].headRow -= animal[0].directionY;
        animal[0].snoutRow -= animal[0].directionY;
        animal[0].noseRow -= animal[0].directionY;
        animal[0].leftEarRow -= animal[0].directionY;
        animal[0].rightEarRow -= animal[0].directionY;
        animal[0].bodyRow -= animal[0].directionY;
        animal[0].tailRow -= animal[0].directionY;
        if (heldCount % 2 != 0) {
            bPoint->row -= animal[0].directionY;
        }
    }
    if ((!(~(oldButtons) & ((1<<7))) && (~buttons & ((1<<7))))) {
        animal[0].headRow += animal[0].directionY;
        animal[0].snoutRow += animal[0].directionY;
        animal[0].noseRow += animal[0].directionY;
        animal[0].leftEarRow += animal[0].directionY;
        animal[0].rightEarRow += animal[0].directionY;
        animal[0].bodyRow += animal[0].directionY;
        animal[0].tailRow += animal[0].directionY;
        if (heldCount % 2 != 0) {
            bPoint->row += animal[0].directionY;
        }
    }
    if ((!(~(oldButtons) & ((1<<5))) && (~buttons & ((1<<5))))) {
        animal[0].headCol -= animal[0].directionX;
        animal[0].snoutCol -= animal[0].directionX;
        animal[0].noseCol -= animal[0].directionX;
        animal[0].leftEarCol -= animal[0].directionX;
        animal[0].rightEarCol -= animal[0].directionX;
        animal[0].bodyCol -= animal[0].directionX;
        animal[0].tailCol -= animal[0].directionX;
        if (heldCount % 2 != 0) {
            bPoint->col -= animal[0].directionX;
        }
    }
    if ((!(~(oldButtons) & ((1<<4))) && (~buttons & ((1<<4))))) {
        animal[0].headCol += animal[0].directionX;
        animal[0].snoutCol += animal[0].directionX;
        animal[0].noseCol += animal[0].directionX;
        animal[0].leftEarCol += animal[0].directionX;
        animal[0].rightEarCol += animal[0].directionX;
        animal[0].bodyCol += animal[0].directionX;
        animal[0].tailCol += animal[0].directionX;
        if (heldCount % 2 != 0) {
            bPoint->col += animal[0].directionX;
        }
    }
    if (heldCount % 2 == 0 && animal[0].leftEarCol - 3 <= 0) {
        animal[0].leftEarCol = 3;
        animal[0].rightEarCol = 11;
        animal[0].headCol = 5;
        animal[0].snoutCol = 7;
        animal[0].noseCol = 7;
        animal[0].bodyCol = 6;
        animal[0].tailCol = 8;
    } else if (heldCount % 2 != 0 && animal[0].leftEarCol - 5 <= 0) {
        animal[0].leftEarCol = 5;
        animal[0].rightEarCol = 13;
        animal[0].headCol = 7;
        animal[0].snoutCol = 9;
        animal[0].noseCol = 9;
        animal[0].bodyCol = 8;
        animal[0].tailCol = 10;
        bone[0].col = 7;
    }
    if (animal[0].rightEarCol + 5 >= 240) {
        animal[0].rightEarCol = 232;
        animal[0].leftEarCol = 224;
        animal[0].headCol = 233 - 7;
        animal[0].snoutCol = 231 - 3;
        animal[0].noseCol = 231 - 3;
        animal[0].bodyCol = 232 - 5;
        animal[0].tailCol = 230 - 1;
        if (heldCount %2 != 0) {
            bone[0].col = 226;
        }
    }
    if (heldCount % 2 == 0 && animal[0].tailRow >= 159) {
        animal[0].leftEarRow = 148;
        animal[0].rightEarRow = 148;
        animal[0].headRow = 145;
        animal[0].snoutRow = 142;
        animal[0].noseRow = 142;
        animal[0].bodyRow = 150;
        animal[0].tailRow = 156;
    } else if (heldCount % 2 != 0 && animal[0].tailRow + 5 >= 159){
        animal[0].leftEarRow = 146;
        animal[0].rightEarRow = 146;
        animal[0].headRow = 143;
        animal[0].snoutRow = 140;
        animal[0].noseRow = 140;
        animal[0].bodyRow = 148;
        animal[0].tailRow = 154;
        bone[0].row = 138;
    }
    if (heldCount % 2 == 0 && animal[0].noseRow - 3 <= 40) {
        animal[0].noseRow = 43;
        animal[0].snoutRow = 44;
        animal[0].headRow = 46;
        animal[0].leftEarRow = 49;
        animal[0].rightEarRow = 49;
        animal[0].bodyRow = 51;
        animal[0].tailRow = 57;
    } else if (heldCount % 2 != 0 && animal[0].noseRow - 5 <= 40) {
        animal[0].noseRow = 47;
        animal[0].snoutRow = 48;
        animal[0].headRow = 50;
        animal[0].leftEarRow = 53;
        animal[0].rightEarRow = 53;
        animal[0].bodyRow = 55;
        animal[0].tailRow = 61;
        bone[0].row = 45;
    }
}

void eraseAnimal(int col, int row) {
    for (int i = 0; i < 17; i++) {
        for (int j = 0; j < 22; j++) {
            if (row + j>= 140 && row <= 160) {
                setPixel(col + i, row + j, ((6) | (17)<<5 | (6)<<10));
            } else if (row + j>= 20 && row <= 140) {
                setPixel(col + i, row + j, ((7) | (7)<<5 | (7)<<10));
            } else if (row + j>= 0 && row <= 20) {
                setPixel(col + i, row + j, ((6) | (17)<<5 | (6)<<10));
            }
        }
    }
}

void eraseAnimal2(int col, int row) {
    for (int i = 0; i < 25; i++) {
        for (int j = 0; j < 30; j++) {
            if (row + j>= 140 && row <= 160) {
                setPixel(col + i, row + j, ((6) | (17)<<5 | (6)<<10));
            } else if (row + j>= 20 && row <= 140) {
                setPixel(col + i, row + j, ((7) | (7)<<5 | (7)<<10));
            } else if (row + j>= 0 && row <= 20) {
                setPixel(col + i, row + j, ((6) | (17)<<5 | (6)<<10));
            }
        }
    }
}

void drawAnimal() {
    u16 color1;
    u16 color2 = 0;
    if (heldCount % 2 == 0) {
        eraseAnimal(animal[0].leftEarCol - 3, animal[0].noseRow - 3);
        color1 = ((18) | (9)<<5 | (0)<<10);
    } else {
        eraseAnimal2(animal[0].leftEarCol - 7, animal[0].noseRow - 7);
        color1 = ((31) | (0)<<5 | (31)<<10);
    }
    drawRect(animal[0].headCol, animal[0].headRow, headW, headH, color1);
    drawRect(animal[0].snoutCol, animal[0].snoutRow, snoutSize, snoutSize, color1);
    drawRect(animal[0].noseCol, animal[0].noseRow, noseW, noseH, color2);
    drawRect(animal[0].leftEarCol, animal[0].leftEarRow, earW, earH, color2);
    drawRect(animal[0].rightEarCol, animal[0].rightEarRow, earW, earH, color2);
    drawRect(animal[0].bodyCol, animal[0].bodyRow, bodyW, bodyH, color1);
    drawRect(animal[0].tailCol, animal[0].tailRow, tailW, tailH, color2);


    for (int i = 0; i < 3; i++) {
        if (heldCount % 2 != 0 && collision(cars[i].col, cars[i].row, cars[i].width, cars[i].height, bone[0].col, bone[0].row, bone[0].width, bone[0].height)) {
            if ((!(~(oldButtons) & ((1<<1))) && (~buttons & ((1<<1))))) {
                if (heldCount %2 != 0) {
                    cars[i].direction = 0;
                    cars[i].active = 0;
                }
            }
        }
        if (heldCount %2 == 0) {
                if (i == 1 || i == 2) {
                    cars[i].direction = 1;
                } else {
                    cars[i].direction = -1;
                }
        }
        if (((collision(cars[i].col, cars[i].row, cars[i].width, cars[i].height, animal[0].noseCol, animal[0].noseRow, noseW, noseH)) ||
            (collision(cars[i].col, cars[i].row, cars[i].width, cars[i].height, animal[0].snoutCol, animal[0].snoutRow, snoutSize, snoutSize)) ||
            (collision(cars[i].col, cars[i].row, cars[i].width, cars[i].height, animal[0].headCol, animal[0].headRow, headW, headH)) ||
            (collision(cars[i].col, cars[i].row, cars[i].width, cars[i].height, animal[0].bodyCol, animal[0].bodyRow, bodyW, bodyH))) && cars[i].active == 1) {
                for (int i = 0; i < 3; i++) {
                    cars[i].active = 1;
                    if (i == 1 || i == 2) {
                        cars[i].direction = 1;
                    } else {
                        cars[i].direction = -1;
                    }
                }
                *(volatile u16*)0x04000062 = (((8) & 15) << 12) | (((7) & 7) << 8);
                *(volatile u16*)0x04000060 = ((6) & 7) | (((9) & 7) << 4) | (1 << 3);
                *(volatile u16*)0x04000064 = NOTE_C3 | (1<<15) | (1<<14);
                lives -= 1;
                heldCount = 0;
                mgba_printf("heldcount collides: %d", heldCount);
                eraseAnimal(animal[0].leftEarCol - 3, animal[0].noseRow - 3);
                initializeAnimal();
        }
    }
}

void initializeCars() {
    for (int i = 0; i < 3; i++) {
        cars[i].width = 20;
        cars[i].height = 10;
        if (i == 0) {
            cars[i].col = 0;
            cars[i].row = 124;
            cars[i].color = ((12) | (18)<<5 | (29)<<10);
            cars[i].direction = -1;
            cars[i].active = 1;
        }
        if (i == 1) {
            cars[i].col = 240 / 2;
            cars[i].row = 86;
            cars[i].color = ((31) | (31)<<5 | (0)<<10);
            cars[i].direction = 1;
            cars[i].active = 1;
        }
        if (i == 2) {
            cars[i].col = 20;
            cars[i].row = 45;
            cars[i].color = ((29) | (18)<<5 | (4)<<10);
            cars[i].direction = 1;
            cars[i].active = 1;
        }
        cars[i].prevCol = cars[i].col;
        cars[i].prevRow = cars[i].row;
    }
}

void drawCars(CARS* pointer) {
    drawRect(pointer->prevCol, pointer->prevRow, pointer->width, pointer->height, ((7) | (7)<<5 | (7)<<10));
    drawRect(pointer->col, pointer->row, pointer->width, pointer->height, pointer->color);
    pointer->prevCol = pointer->col;
    pointer->prevRow = pointer->row;
}

void updateCars(CARS* pointer) {
    pointer->col += pointer->direction;
    if (pointer->col >= 240 - pointer->width) {
        pointer->col = 0;
    }
    if (pointer->col < 0) {
        pointer->col = 240 - pointer->width;
    }
}

void initializeCoins() {
    for (int i = 0; i < 5; i++) {
        int minRow = 40;
        int maxRow = 120;
        coins[i].col = rand() % 230;
        coins[i].row = (minRow + rand() % (maxRow - minRow));
        coins[i].size = 5;
        coins[i].color = ((31) | (31)<<5 | (0)<<10);
        coins[i].active = 1;
        coins[i].oldCol = coins[i].col;
        coins[i].oldRow = coins[i].row;
    }
}

void drawCoins(COINS* pointer) {
    drawRect(pointer->oldCol, pointer->oldRow, pointer->size, pointer->size, ((7) | (7)<<5 | (7)<<10));
    drawRect(pointer->col, pointer->row, pointer->size, pointer->size, pointer->color);
    pointer->oldCol = pointer->col;
    pointer->oldRow = pointer->row;
}

void updateCoins(COINS* pointer) {
    if ((collision(pointer->col, pointer->row, pointer->size, pointer->size, animal[0].noseCol, animal[0].noseRow - 3, noseW, noseH)) ||
        (collision(pointer->col, pointer->row, pointer->size, pointer->size, animal[0].snoutCol + 3, animal[0].snoutRow, snoutSize, snoutSize)) ||
        (collision(pointer->col, pointer->row, pointer->size, pointer->size, animal[0].headCol + 3, animal[0].headRow, headW, headH)) ||
        (collision(pointer->col, pointer->row, pointer->size, pointer->size, animal[0].bodyCol, animal[0].bodyRow, bodyW, bodyH)) ||
        (collision(pointer->col, pointer->row, pointer->size, pointer->size, bone[0].col, bone[0].row, bone[0].width, bone[0].height)) ||
        (collision(pointer->col, pointer->row, pointer->size, pointer->size, animal[0].rightEarCol + 3, animal[0].rightEarRow, earW, earH)) ||
        (collision(pointer->col, pointer->row, pointer->size, pointer->size, animal[0].leftEarCol, animal[0].leftEarRow, earW, earH))) {
        pointer->active = 0;
        *(volatile u16*)0x04000062 = (((8) & 15) << 12) | (((7) & 7) << 8);
        *(volatile u16*)0x04000060 = ((6) & 7) | (((7) & 7) << 4) | (0 << 3);
        *(volatile u16*)0x04000064 = NOTE_G5 | (1<<15) | (1<<14);
        coinNum += 1;
        coinsLeft--;
    }
    if (coinsLeft < 5) {
        for (int i = 0; i < 5; i++) {
            int minRow = 40;
            int maxRow = 130;
            if (coins[i].active == 0) {
                coins[i].col = rand() % 200;
                coins[i].row = (minRow + rand() % (maxRow - minRow));
                coins[i].size = 5;
                coins[i].color = ((31) | (31)<<5 | (0)<<10);
                coins[i].active = 1;
                break;
            }
        }
    }
}

void initializeBone() {
    int minRow = 42;
    int maxRow = 120;
    bone[0].col = rand() % 200;
    bone[0].row = (minRow + rand() % (maxRow - minRow));
    bone[0].width = 7;
    bone[0].height = 3;
    bone[0].color = ((31) | (31)<<5 | (31)<<10);
}

void drawBone(BONE* pointer) {
    eraseBone(pointer->prevCol, pointer->prevRow);
    drawRect(pointer->col, pointer->row, pointer->width, pointer->height, pointer->color);
    pointer->prevCol = pointer->col;
    pointer->prevRow = pointer->row;
}

void eraseBone(int col, int row) {
    for (int i = 0; i < 7; i++) {
        for (int j = 0; j < 3; j++) {
            if (row + j>= 140 && row <= 160) {
                setPixel(col + i, row + j, ((6) | (17)<<5 | (6)<<10));
            } else if (row + j>= 20 && row <= 140) {
                setPixel(col + i, row + j, ((7) | (7)<<5 | (7)<<10));
            } else if (row + j>= 0 && row <= 20) {
                setPixel(col + i, row + j, ((6) | (17)<<5 | (6)<<10));
            }
        }
    }
}

void updateBone(BONE* pointer) {
    if ((collision(animal[0].noseCol, animal[0].noseRow, noseW, noseH, pointer->col, pointer->row, pointer->width, pointer->height) ||
        collision(animal[0].snoutCol, animal[0].snoutRow, snoutSize, snoutSize, pointer->col, pointer->row, pointer->width, pointer->height))) {

        if ((!(~(oldButtons) & ((1<<0))) && (~buttons & ((1<<0))))) {
            pointer->col = animal[0].noseCol - 2;
            pointer->row = animal[0].noseRow - 2;
            heldCount += 1;
            mgba_printf("heldcount: %d", heldCount);
        }
    }
}
