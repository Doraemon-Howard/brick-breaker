void rectButton(String text, float x, float y, float w, float h, int size){
  if (mouseX>x-w/2 && mouseX<x+w/2 && mouseY > y-h/2 && mouseY <y+h/2){
  strokeWeight(10);
  stroke(red);
  fill(white);
}else {
  strokeWeight(2);
  stroke(0);
 
  fill(white);
}
  textSize(size);
  rect(x,y,w,h);//remember the mode is center
  fill(0);
  text(text,x,y);
  }
  
void rectButton(PImage pic, float x, float y, float w, float h){
if (mouseX>x-w/2 && mouseX<x+w/2 && mouseY > y-h/2 && mouseY <y+h/2){
  strokeWeight(10);
  stroke(red);
  fill(white);
}else {
  strokeWeight(0);
  stroke(0);
  fill(white);
}

  rect(x,y,w,h);//remember the mode is center
  image(pic,x,y,w,h);
}

//numofrow*numofcol is the number of bricks
void reset(){
  timing=1000;
  //generate a new sets of bricks
    x=new int[numofrow*numofcol];
  y=new int[numofrow*numofcol];
  brickstatus=new int[numofrow*numofcol];
  display=new boolean[numofrow*numofcol];
    for (int i=0; i<numofrow;i++){
    for (int j=0;j<numofcol;j++){
      x[i*numofcol+j]=j*(width/numofcol)+((width/numofcol)/2);
      y[i*numofcol+j]=i*(height/2/numofrow)+(height/2/numofcol);
    }
  }
  for (int i=0;i<numofrow*numofcol;i++){
     display[i]=true;
     if (playmode==1||playmode==3){
     brickstatus[i]=(int)random(1,4);//given them a random number of status
     }
     if (playmode==2){
       brickstatus[i]=1;
     }
  }
  
  //reset the ball
  bx=400; by=500;
  
  vx=random(-5,5);
  vy=random(-5,0);
  remainingbricks=numofrow*numofcol;
  
  score=0;
}
  
  
