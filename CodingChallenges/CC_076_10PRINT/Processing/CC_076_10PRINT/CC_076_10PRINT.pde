// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain

// 10PRINT
// https://www.youtube.com/watch?v=bEyTZ5ZZxZs
int x = 0;
int y = 0;
int spacing  = 20;
int interations = 2;
void setup() {
  size(1000, 1000);
  background(0);
  noLoop();
  strokeCap(ROUND);

}

void draw() {
  
  for (int i = 0; i < interations; i++) {
    for (int y = 0; y < height; y=y+spacing) {
      for (int x = 0; x < width; x=x+spacing) {
        if (i < (interations/2)) {
          stroke(255,0,0,128); //255/(i+1));
        }
        else
        { 
          stroke(0,255,0,128); //255/(i+1));
        }
        strokeWeight(8); //(spacing/8)*i);
        
        if (Math.random() > 0.5){
         line (x,y,x+spacing,y+spacing);// "\"
        }
        else {
         line (x,y+spacing , x+spacing,y);// "/"
        }
      }
    }
  }
  //save("weave2.png");
}
