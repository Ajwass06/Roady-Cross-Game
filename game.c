#include "gba.h"
#include "game.h"
#include "print.h"
#include "sound.h"

CARS cars[CARCOUNT];
COINS coins[COINCOUNT];
ANIMAL animal[ANIMALCOUNT];
BONE bone[BONECOUNT];

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
    coinsLeft = COINCOUNT;
}

void background() {
    drawRect(0, 140, SCREENWIDTH, 20, GRASS); //starting area
    drawRect(0, 40, SCREENWIDTH, 100, DARKGRAY); //road
    drawRect(0, 0, SCREENWIDTH, 40, GRASS); //end -> jackpot
}

void updateGame() {
    BONE* bPoint = &bone[0];
    updateBone(bPoint);
    updateAnimal(bPoint);
    for (int i = 0; i < CARCOUNT; i++) {
        CARS* pointer = &cars[i];
        updateCars(pointer);
    }
    for (int i = 0; i < COINCOUNT; i++) {
        if (coins[i].active != 0) {
            COINS* pointer = &coins[i];
            updateCoins(pointer);
        }
    }
}

void drawGame() {
    drawAnimal();
    for (int i = 0; i < COINCOUNT; i++) {
        if (coins[i].active != 0) {
            COINS* pointer = &coins[i];
            drawCoins(pointer);
        }
    }
    for (int i = 0; i < CARCOUNT; i++) {
        CARS* pointer = &cars[i];
        drawCars(pointer);
    }
    BONE* pointer = &bone[0];
    drawBone(pointer);
}

void initializeAnimal() {
    animal[0].headCol = SCREENWIDTH / 2 + 1;
    animal[0].headRow = 145;
    animal[0].snoutCol = SCREENWIDTH / 2 + 3;
    animal[0].snoutRow = 143;
    animal[0].noseCol = SCREENWIDTH / 2 + 3;
    animal[0].noseRow = 142;
    animal[0].leftEarCol = SCREENWIDTH / 2 - 1;
    animal[0].leftEarRow = 148;
    animal[0].rightEarCol = SCREENWIDTH / 2 + 7;
    animal[0].rightEarRow = 148;
    animal[0].bodyCol = SCREENWIDTH / 2 + 2;
    animal[0].bodyRow = 150;
    animal[0].tailCol = SCREENWIDTH / 2 + 4;
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
    if (BUTTON_PRESSED(BUTTON_UP)) {
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
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
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
    if (BUTTON_PRESSED(BUTTON_LEFT)) {
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
    if (BUTTON_PRESSED(BUTTON_RIGHT)) {
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
    if (heldCount % 2 == 0 && animal[0].leftEarCol - 3 <= 0) { //goes off left screen
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
    if (animal[0].rightEarCol + 5 >= 240) { //goes off right screen
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
    if (heldCount % 2 == 0 && animal[0].tailRow >= 159) { //goes off bottom of screen
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
    for (int i = 0; i < 17; i++) { //max width of dog = 12
        for (int j = 0; j < 22; j++) { //max height of dog = 17
            if (row + j>= 140 && row <= 160) { //GRASS
                setPixel(col + i, row + j, GRASS);
            } else if (row + j>= 20 && row <= 140) { //DARKGRAY
                setPixel(col + i, row + j, DARKGRAY);
            } else if (row + j>= 0 && row <= 20) { //GRASS
                setPixel(col + i, row + j, GRASS);
            }
        }
    }
}

void eraseAnimal2(int col, int row) {
    for (int i = 0; i < 25; i++) { //max width of dog = 12
        for (int j = 0; j < 30; j++) { //max height of dog = 17
            if (row + j>= 140 && row <= 160) { //GRASS
                setPixel(col + i, row + j, GRASS);
            } else if (row + j>= 20 && row <= 140) { //DARKGRAY
                setPixel(col + i, row + j, DARKGRAY);
            } else if (row + j>= 0 && row <= 20) { //GRASS
                setPixel(col + i, row + j, GRASS);
            }
        }
    }
}

void drawAnimal() {
    u16 color1;
    u16 color2 = BLACK;
    if (heldCount % 2 == 0) {
        eraseAnimal(animal[0].leftEarCol - 3, animal[0].noseRow - 3);
        color1 = BROWN;
    } else {
        eraseAnimal2(animal[0].leftEarCol - 7, animal[0].noseRow - 7);
        color1 = MAGENTA;
    }
    drawRect(animal[0].headCol, animal[0].headRow, headW, headH, color1);
    drawRect(animal[0].snoutCol, animal[0].snoutRow, snoutSize, snoutSize, color1);
    drawRect(animal[0].noseCol, animal[0].noseRow, noseW, noseH, color2);
    drawRect(animal[0].leftEarCol, animal[0].leftEarRow, earW, earH, color2);
    drawRect(animal[0].rightEarCol, animal[0].rightEarRow, earW, earH, color2);
    drawRect(animal[0].bodyCol, animal[0].bodyRow, bodyW, bodyH, color1);
    drawRect(animal[0].tailCol, animal[0].tailRow, tailW, tailH, color2);

    //collides with car
    for (int i = 0; i < CARCOUNT; i++) {
        if (heldCount % 2 != 0 && collision(cars[i].col, cars[i].row, cars[i].width, cars[i].height, bone[0].col, bone[0].row, bone[0].width, bone[0].height)) {
            if (BUTTON_PRESSED(BUTTON_B)) {
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
                for (int i = 0; i < CARCOUNT; i++) {
                    cars[i].active = 1;
                    if (i == 1 || i == 2) {
                        cars[i].direction = 1;
                    } else {
                        cars[i].direction = -1;
                    }
                }
                REG_SND1CNT = DMG_ENV_VOL(8) | DMG_STEP_TIME(7);
                REG_SND1SWEEP = DMG_SWEEP_NUM(6) | DMG_SWEEP_STEPTIME(9) | DMG_SWEEP_DOWN;
                REG_SND1FREQ = NOTE_C3 | SND_RESET | DMG_FREQ_TIMED;
                lives -= 1;
                heldCount = 0;
                mgba_printf("heldcount collides: %d", heldCount);
                eraseAnimal(animal[0].leftEarCol - 3, animal[0].noseRow - 3);
                initializeAnimal();
        }
    }
}

void initializeCars() {
    for (int i = 0; i < CARCOUNT; i++) {
        cars[i].width = 20;
        cars[i].height = 10;
        if (i == 0) {
            cars[i].col = 0;
            cars[i].row = 124;
            cars[i].color = DARKBLUE;
            cars[i].direction = -1;
            cars[i].active = 1;
        } 
        if (i == 1) {
            cars[i].col = SCREENWIDTH / 2;
            cars[i].row = 86;
            cars[i].color = YELLOW;
            cars[i].direction = 1;
            cars[i].active = 1;
        }
        if (i == 2) {
            cars[i].col = 20;
            cars[i].row = 45;
            cars[i].color = ORANGE;
            cars[i].direction = 1;
            cars[i].active = 1;
        }
        cars[i].prevCol = cars[i].col;
        cars[i].prevRow = cars[i].row;
    }
}

void drawCars(CARS* pointer) {
    drawRect(pointer->prevCol, pointer->prevRow, pointer->width, pointer->height, DARKGRAY);
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
        pointer->col = SCREENWIDTH - pointer->width;
    }
}

void initializeCoins() {
    for (int i = 0; i < COINCOUNT; i++) {
        int minRow = 40;
        int maxRow = 120;
        coins[i].col = rand() % 230;
        coins[i].row = (minRow + rand() % (maxRow - minRow));
        coins[i].size = 5;
        coins[i].color = YELLOW;
        coins[i].active = 1;
        coins[i].oldCol = coins[i].col;
        coins[i].oldRow = coins[i].row;
    }
}

void drawCoins(COINS* pointer) {
    drawRect(pointer->oldCol, pointer->oldRow, pointer->size, pointer->size, DARKGRAY);
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
        REG_SND1CNT = DMG_ENV_VOL(8) | DMG_STEP_TIME(7);
        REG_SND1SWEEP = DMG_SWEEP_NUM(6) | DMG_SWEEP_STEPTIME(7) | DMG_SWEEP_UP;
        REG_SND1FREQ = NOTE_G5 | SND_RESET | DMG_FREQ_TIMED;
        coinNum += 1;
        coinsLeft--;
    }
    if (coinsLeft < COINCOUNT) {
        for (int i = 0; i < COINCOUNT; i++) {
            int minRow = 40;
            int maxRow = 130;
            if (coins[i].active == 0) {
                coins[i].col = rand() % 200;
                coins[i].row = (minRow + rand() % (maxRow - minRow));
                coins[i].size = 5;
                coins[i].color = YELLOW;
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
    bone[0].color = WHITE;
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
            if (row + j>= 140 && row <= 160) { //GRASS
                setPixel(col + i, row + j, GRASS);
            } else if (row + j>= 20 && row <= 140) { //DARKGRAY
                setPixel(col + i, row + j, DARKGRAY);
            } else if (row + j>= 0 && row <= 20) { //GRASS
                setPixel(col + i, row + j, GRASS);
            }
        }
    }
}

void updateBone(BONE* pointer) {
    if ((collision(animal[0].noseCol, animal[0].noseRow, noseW, noseH, pointer->col, pointer->row, pointer->width, pointer->height) || 
        collision(animal[0].snoutCol, animal[0].snoutRow, snoutSize, snoutSize, pointer->col, pointer->row, pointer->width, pointer->height))) {
        // mgba_printf("collision");
        if (BUTTON_PRESSED(BUTTON_A)) {
            pointer->col = animal[0].noseCol - 2;
            pointer->row = animal[0].noseRow - 2;
            heldCount += 1;
            mgba_printf("heldcount: %d", heldCount);
        }
    }
}