void option(){
  image(optionbg,400,400,800,800);
  //select mode
  rectButton("Normal Mode",100,100,150,100,20);
  
  rectButton("Harder Mode", 300,100,150,100,20);
  
  rectButton("Extreme Hard",500,100,150,100,20);
  
  
  rectButton("litte", 100,500,100,100,25);
  rectButton("medium", 300,500,100,100,25);
  rectButton("a lot", 500,500,100,100,25);
  rectButton("Back",700,700,100,100,25);
  
  rectButton(bg1,100,300,150,150);
  rectButton(bg2,300,300,150,150);
  rectButton(bg3,500,300,150,150);
  

//background

}

void optionClicks(){
  if (mouseX>25&&mouseX<175&&mouseY>50&&mouseY<150){
    playmode=2;
  }
  if (mouseX>225&&mouseX<375&&mouseY>50&&mouseY<150){
    playmode=1;
  }
  if (mouseX>425&&mouseX<575&&mouseY>50&&mouseY<150){
    playmode=3;
  }
  if (mouseX>50&&mouseX<150&&mouseY>450&&mouseY<550){
    numofrow=2;
    numofcol=4;
  }
    if (mouseX>250&&mouseX<350&&mouseY>450&&mouseY<550){
    numofrow=4;
    numofcol=8;
    }
    if (mouseX>450&&mouseX<550&&mouseY>450&&mouseY<550){
    numofrow=6;
    numofcol=10;
    }
   if (mouseX>650&&mouseX<750&&mouseY>650&&mouseY<750){
      mode=INTRO;
      reset();
   }
  if (mouseX>25&&mouseX<175&&mouseY>225&&mouseY<375){
    selected=bg1;
  }
  if (mouseX>225&&mouseX<375&&mouseY>225&&mouseY<375){
    selected=bg2;
  }
  if (mouseX>425&&mouseX<575&&mouseY>225&&mouseY<375){
    selected=bg3;
  }
}
