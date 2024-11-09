//background colors
int bgR = 50;
int bgG = 200;
int bgB = 240;

//face colors
int fR = 230;
int fG = 200;
int fB = 170;

//image
PImage manFace;
PImage dreadLocks;

//setup
void setup(){
  background(bgR,bgG,bgB);
  size(700,600);
  manFace = loadImage("manFace.png");
  dreadLocks = loadImage("dreads.png");
}

//draw loop
void draw(){
  noStroke();
  background(bgR,bgG,bgB);
  fill(fR,fG,fB);
  
  //face
  rect(160,220,350,235);
  rect(175,200,340,50);
  triangle(160,455,510,455,345,500);
  
  //key pressed
  if(keyPressed==true){
    bgR=bgR+5;
    bgG=bgB-1;
    bgB=bgB-3;
    fR=fR-3;
    fG=fG-1;
    fB=fB+1;
  }
  
  //mouse pressed
  if(mousePressed==true){
    bgR=bgR-5;
    bgG=bgG+1;
    bgB=bgB+3;
    fR=fR+3;
    fG=fG+1;
    fB=fB-1;
  }
  
  //man face
  image(manFace,160,170, width/2, height/2);
  
  //hair
  image(dreadLocks,0,70, width, height/2);
  
  //text
  fill(10,10,10);
  textSize(50);
  text("hold mouse, then any key", 75, 560); 
}
