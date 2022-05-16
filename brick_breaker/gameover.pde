void gameover(){
  image(gobg,400,400,800,800);
  textAlign(CENTER,CENTER);
  textSize(80);
  fill(yellow);
  if (live>0){
    text("You Win!", 400,400);
    text("score:"+score, 400,500);
}else{
  text("You Lose",400,400);
  
}
  //while(f<=frames){
  //  f++;
  //  if(f==frames){f=0;}
  //}
}
void gameoverClicks(){
  mode=INTRO;
}
