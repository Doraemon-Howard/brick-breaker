//brick game
//Howard Zhu 
//Block 2-3
//Apr.21


//mode framework
int mode;
final int INTRO=1;
final int GAME=2;
final int PAUSE=3;
final int GAMEOVER=4;
final int OPTION=5;

//color pallette
color pink =#FFC0CB;
color black =#000000;
color cyan =#00FFFF;
color orange= #FFA500;
color yellow= #FFFF00;
color green= #00FF00;
color red= #FF0000;
color blue =#0000FF;
color white =#FFFFFF;
color grey= #7C7A7A;
color purple= #800080;
color darkblue=#00008B;

//variables
int[] x, y;
int[] brickstatus;
int score=0;
boolean[] display;
float px, py, pd, bd, bx, by, vx, vy, brickd;
boolean akey, dkey, leftkey, rightkey;
int numofcol, numofrow, timing;
int playmode, remainingbricks, live;
PImage selected, optionbg, gobg, introbg, bg1, bg2, bg3, pauseicon;
PImage[] gif;
int frames, f;
void setup() {
  f=0;
  mode=1;
  size(800, 800);
  rectMode(CENTER);
  imageMode(CENTER);
  numofrow=4; 
  numofcol=8;
  playmode=2;
  reset();
  textAlign(CENTER, CENTER);
  gobg=loadImage("bg.jpg");
  optionbg=loadImage("images.png");
  introbg=loadImage("bbbg.jpg");
  bg1=loadImage("bg1.jpg");
  bg2=loadImage("bg2.jpg");
  bg3=loadImage("bg3.jpg");
  pauseicon=loadImage("pause.png");
  //for (int i=0; i<56; i++) {
  //  gif[0]=loadImage("gif("+(i+1)+").gif");
  //}
  //initialize variable
  pd=75;
  brickd=50;
  bd=30;
  px=400;
  py=700;
  live=5;
  selected=bg1;
}
void draw() {
  if (mode==INTRO) {
    intro();
    reset();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else if (mode==OPTION) {
    option();
  } else {
    println("Error: mode ="+mode);
  }
}


// a harder mode/ the game will generate a new row of brick in every 2 min
