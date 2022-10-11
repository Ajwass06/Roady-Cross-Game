#include <stdlib.h>
#include <stdio.h>
#include "font.h"
#include "sound.h"
#include "text.h"
#include "gba.h"
#include "game.h"
#include "print.h"

enum STATE{START, GAME, PAUSE, WIN, LOSE};
int currState;

void initialize();
void goToStart();
void start();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToLose();
void lose();

u16 buttons;
u16 oldButtons;

char buff1[41];
char buff2[41];

int seed;

int main() {
    mgba_open();
    initialize();

    while (1) {
        oldButtons = buttons;
        buttons = BUTTONS;
        switch (currState) {
            case START:
                start();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case LOSE:
                lose();
                break;
        }
    }
}

void initialize() {
    REG_DISPCTL = MODE3 | BG2_ENABLE;
    REG_SOUNDCNT_X = SND_ENABLED;
    REG_SOUNDCNT_L = DMG_VOL_LEFT(5) | DMG_VOL_RIGHT(5) | DMG_SND1_LEFT | DMG_SND1_RIGHT |
                     DMG_SND2_LEFT | DMG_SND2_RIGHT | DMG_SND3_LEFT | DMG_SND3_RIGHT | DMG_SND4_LEFT |
                     DMG_SND4_RIGHT;
    goToStart();
}

void goToStart() {
    mgba_printf("goToStart()");
    fillScreen(BLUE);
    drawString(10, 10, "roady cross", WHITE);
    drawString(10, 30, "press SELECT to begin", WHITE);
    drawRect(SCREENWIDTH / 2, 80, 50, 50, BROWN);
    drawRect(SCREENWIDTH / 2 - 6, 80, 10, 5, BLACK);
    drawRect(SCREENWIDTH / 2 - 6, 80, 5, 20, BLACK);
    drawRect(SCREENWIDTH / 2 + 46, 80, 10, 5, BLACK);
    drawRect(SCREENWIDTH / 2 + 51, 80, 5, 20, BLACK);
    drawRect(SCREENWIDTH / 2 + 8, 90, 10, 10, WHITE);
    drawRect(SCREENWIDTH / 2 + 32, 90, 10, 10, WHITE);
    drawRect(SCREENWIDTH / 2 + 36, 91, 3, 8, BLACK);
    drawRect(SCREENWIDTH / 2 + 11, 91, 3, 8, BLACK);
    drawRect(SCREENWIDTH / 2 + 21, 108, 8, 5, BLACK);
    drawRect(SCREENWIDTH / 2 + 24, 108, 2, 15, BLACK);
    drawRect(SCREENWIDTH / 2 + 20, 122, 10, 2, BLACK);
    drawRect(SCREENWIDTH / 2 + 20, 120, 2, 2, BLACK);
    drawRect(SCREENWIDTH / 2 + 28, 120, 2, 2, BLACK);
    drawRect(SCREENWIDTH / 2 - 5, 135, 60, 25, BROWN);
    drawRect(SCREENWIDTH / 2 + 2, 130, 46, 5, MAGENTA);
    currState = START;
}

void start() {
    lives = 3;
    coinNum = 0;
    heldCount = 0;
    seed++;
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        mgba_printf("select");
        srand(seed);
        initializeGame();
        goToGame();
    }
}

void goToGame() {
    currState = GAME;
    background();
    drawString(5, 20, "lives: ", BLACK);
    drawString(189, 20, "coins: ", BLACK);
}

void game() {
    updateGame();
    sprintf(buff1, "%d", lives);
    sprintf(buff2, "%d", coinNum);
    drawString(100, 12, "ROADY", BLACK);
    drawString(100, 22, "CROSS", BLACK);
    waitForVBlank();
    drawRect(41, 20, 10, 10, GRASS); //erase lives num
    drawRect(225, 20, 10, 10, GRASS); //erase coins num
    drawString(41, 20, buff1, BLACK);
    drawString(225, 20, buff2, BLACK);
    drawGame();
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToPause();
    }
    if (lives < 1) {
        goToLose();
    }
    if (coinNum >= 10) {
        goToWin();
    }
}

void goToPause() {
    currState = PAUSE;
    fillScreen(ORANGE);
    drawString(102, 10, "paused", BLACK);
}

void pause() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToWin() {
    currState = WIN;
    fillScreen(GREEN);
    drawString(75, 20, "yay :) you won!", BLACK); //15 chars
}

void win() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}

void goToLose() {
    currState = LOSE;
    fillScreen(RED);
    drawString(54, 20, "you lost :( tough luck", BLACK); //22 chars
}

void lose() {
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToStart();
    }
}