// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain

// 10PRINT
// https://www.youtube.com/watch?v=bEyTZ5ZZxZs
int x = 0;
int y = 0;
int spacing  = 20;
int iterations = 1;
void setup() {
  size(500, 500);
  background(0);
  noLoop();
  strokeCap(ROUND);
  noFill();
}

void draw() {
  
  for (int i = 0; i < iterations; i++) {
    for (int y = 0; y < height; y=y+spacing) {
      for (int x = 0; x < width; x=x+spacing) {
        if (i > (iterations/2)){
          stroke(255,0,0,128); //255/(i+1));          
        }
        else
        { 
          stroke(255,0,0,128); //255/(i+1));          
        }
        
        strokeWeight((spacing/4)*(i+1));
        
        if (Math.random() > 0.75){
          stroke(255,0,0,128);
          line (x,y,x+spacing,y+spacing);
        }
        else {
          stroke(0,255,0,128);
          line (x,y+spacing , x+spacing,y);
        }
      }
    }
  }
  //delay(500);
  //save("weave3.png");
}
