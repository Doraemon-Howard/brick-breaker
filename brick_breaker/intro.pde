void intro(){
  image(introbg,400,400,800,800);
  textSize(70);
  text("Brick Breaker", 400,400);
  rectButton("Option",400,600,100,100,25);
  text("Click to Start",400,200);
}
  
  
void introClicks(){
  
  if (mouseX>350&&mouseX<450&&mouseY>550&&mouseY<650){
    mode=OPTION;
  }else{
    mode=GAME;
  }
}
