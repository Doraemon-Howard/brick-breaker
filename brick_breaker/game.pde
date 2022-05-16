void game() {
  image(selected, 400, 400, 800, 800);
  fill(yellow);
  text("Lives: " + live, 100, 500);
  //paddle
  fill(white);
  strokeWeight(0);
  circle(px, py, pd);

  //ball 
  fill(white);
  circle(bx, by, bd);

  //moving the ball
  bx+=vx;
  by+=vy;
  fill(yellow);
  text("score:"+score,100,450);
  //moving the paddle
  if (akey) px-=10;
  if (leftkey) px-=10;
  if (dkey) px+=10;
  if (rightkey) px+=10;

  if (playmode==3) {
    timing--;
    int time=(int)map(timing,0,1000,0,30);
    fill(yellow);
    text("timer: "+time,100,560);
  }
  if (timing==0) {
    increase();
    timing=1000;
  }
  //display bricks
  for (int i=0; i<numofrow*numofcol; i++) {
    if (display[i]) {
      manageBricks(i);
    }
  }
  //bouncing the bricks (wall)
  if (by<=bd/2) {
    vy*=-1;
    by=bd/2+1;
  }
  if (bx<=bx/2) {
    vx*=-1;
    bx=bd/2+1;
  }
  if (bx>=width-bd/2) {
    vx*=-1;
    bx=height-bd/2-1;
  }

  if (by>=height) {//replace the ball
    live--;
    bx=400;
    by=500;
    vx=random(-5, 5);
    vy=random(-10, 0);
    if (live<=0) mode=GAMEOVER;
  }

  //bouncing the ball paddle
  if (dist(bx, by, px, py)<bd/2+pd/2) {
    vx=(bx-px)/5;
    vy=(by-py)/5;
  }

  //reset
  rectButton("Reset", 700, 700, 80, 80, 25);
  rectButton("Back", 100, 700, 80, 80, 25);
  rectButton(pauseicon,700,500,80,80);
}

void gameClicks() {
  if (mouseX>660&&mouseX<740&mouseY>660&&mouseY<740) {
    reset();
  }
  if (mouseX>60&&mouseX<140&mouseY>660&&mouseY<740) {
    mode=INTRO;
  }
  if (mouseX>660&&mouseX<740&mouseY>460&&mouseY<640) {
    mode=PAUSE;
  }
}

void manageBricks(int i) {
  if (brickstatus[i]==6) fill(darkblue);
  if (brickstatus[i]==5) fill(purple);
  if (brickstatus[i]==4) fill(grey);
  if (brickstatus[i]==3) fill(red);
  if (brickstatus[i]==2) fill(yellow);
  if (brickstatus[i]==1) fill(green);

  circle(x[i], y[i], brickd);
  //bouncing the ball (bricks)
  if (dist(bx, by, x[i], y[i])<brickd/2+bd/2) {
    vx=(bx-x[i])/5;
    vy=(by-y[i])/5;
    brickstatus[i]--;
    score++;
  }
  if (brickstatus[i]==0) {
    display[i]=false;
    remainingbricks--;
  }
  if (remainingbricks==0)mode=GAMEOVER;
}
void increase() {
  for (int i=0; i<numofrow*numofcol; i++) {
    if (display[i]&&playmode==3) {
      brickstatus[i]+=1;
      if (brickstatus[i]>=6) brickstatus[i]=6;
    }
  }//given them a random number of status
}
