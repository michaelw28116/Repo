/* 



|||This is a legit program written in C |||
___________________________________________

void setup(){ //declare a setup function
  //do some setup items
}

void draw(){ //declare a draw function
  //draw a square
}

bool B = true

int main(){ //this is where our program starts!
  setup();
  
  while(1){  //infinite loop
    draw();
  }
  
  return 0;
}


*/

//these are all our global variables
////////////////////////////////////////

//colors of the background
int R = 10;
int G = 5;
int B = 50;

//parameters of the square Ball
int x = 50;
float y = 50;
final int d = 100;

//////////////////
// end of global variables


void setup(){
  size(500,800);
  background(R,G,B);
  
  
}

void draw(){
  background(R,G,B);
  
  fill(0,240,0);
  stroke(255,0,0);
  strokeWeight(20);
  // draw a square
  square(x, y, d);
  
  y = y+9.8;
  


  
}
