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

#define CARCOUNT 3
#define COINCOUNT 5
#define ANIMALCOUNT 1
#define BONECOUNT 1

extern int lives;
extern int coinNum;
extern int heldCount;

extern CARS cars[CARCOUNT];
extern COINS coins[COINCOUNT];
extern ANIMAL animal[ANIMALCOUNT];
extern BONE bone[BONECOUNT];

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