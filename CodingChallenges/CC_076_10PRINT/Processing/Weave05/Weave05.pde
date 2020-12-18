// Alastair Montgomery
// http://0x32.uk/

int x = 0;
int y = 0;
int spacing  = 20;
//float hs = spacing / 2.5;
int interations = 3;
int alpha = 32;
void setup() {
  size(1000, 1000);
  background(0);
  noLoop();
  strokeCap(ROUND);
  noFill();
}

void draw1(int x, int y, int s) {
  line(x,y,x,y+s);
  line(x,y,x+s,y);  
}

void draw2(int x, int y, int s) {
  line(x,y,x+s,y);
  line(x+s,y,x+s,y+s);  
}

void draw3(int x, int y, int s) {
  line(x,y,x,y+s);
  line(x,y+s,x+s,y+s);  
}

void draw4(int x, int y, int s) {
  line(x,y+s,x+s,y+s);
  line(x+s,y+s,x+s,y);  
}


void draw() {
  
  for (int i = 0; i < interations; i++) {
    for (int y = 0; y < height; y=y+spacing) {
      for (int x = 0; x < width; x=x+spacing) {
        
        strokeWeight((spacing/(interations-i)));
        
        double randy = Math.random();
        
        if (Math.random() < 0.25){
         stroke(255,0,0,alpha);
         draw1(x,y,spacing);
        }
        else if (randy > 0.25 && randy < 0.5) {
         stroke(0,255,0,alpha);
         draw2(x,y,spacing);
        }
        else if (randy > 0.5 && randy < 0.75) {
         stroke(0,0,255,alpha);
         draw3(x,y,spacing);
        }
        else {
          stroke(255,255,0,alpha);
          draw4(x,y,spacing);
        }
      }
    }
  }
  //delay(500);
  save("weave05.png");
  save("weave05.jpg");
}
