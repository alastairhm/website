// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain

// 10PRINT
// https://www.youtube.com/watch?v=bEyTZ5ZZxZs
int x = 0;
int y = 0;
int spacing  = 10;
//float hs = spacing / 2.5;
int interations = 1;
int alpha = 128;
void setup() {
  size(1000, 1000);
  background(0);
  noLoop();
  strokeCap(ROUND);
  noFill();

}

void draw() {
  
  for (int i = 0; i < interations; i++) {
    for (int y = 0; y < height; y=y+spacing) {
      for (int x = 0; x < width; x=x+spacing) {
        //if (i == 0){ //< (interations/2)) {
        //  //fill(255,0,0,64);
        //  stroke(255,0,0,255); //255/(i+1));          
        //}
        //else
        //{ 
        //  //fill(0,255,0,64);
        //  stroke(0,255,0,128); //255/(i+1));          
        //}
        strokeWeight((spacing/4)*(i+1));
        
        if (Math.random() > 0.5){
         //ellipse (x+hs,y+hs,hs,spacing);// "\"
         //line (x,y,x+spacing,y+spacing);// "\"
         stroke(255,0,0,alpha);          
         line(x,y,x+spacing,y);
         line(x,y,x,y+spacing);
        }
        else {
         //ellipse (x+hs,y+hs,spacing,hs);// "/"
         //line (x,y+spacing , x+spacing,y);// "/"
         stroke(0,255,0,alpha);
         line(x,y+spacing,x+spacing,y+spacing);
         line(x+spacing,y,x+spacing,y+spacing);         
        }
      }
    }
  }
  //delay(500);
  save("weave3.png");
}
