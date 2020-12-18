// Daniel Shiffman
// http://codingtra.in
// http://patreon.com/codingtrain
// Code for this video: https://youtu.be/Cl_Gjj80gPE
// Processing transcription: Chuck England

import java.util.*;

List<Walker> tree = new ArrayList<Walker>();
List<Walker> walkers = new ArrayList<Walker>();
//float r = 4;
int maxWalkers = 50;
int iterations = 5000;
float radius = 12;
float hue = 0;
float shrink = 0.999;

void setup() {
  size(1500, 1500);
  colorMode(HSB, 360, 100, 100);
   for (int x = 0; x < width; x += radius * 2) {
     //tree.add(new Walker(x, 0));
     tree.add(new Walker(x, height));
   }

//   for (int y = 0; y < height; y += radius * 2) {
//     tree.add(new Walker(0, y));
//     tree.add(new Walker(width, y));
//   }
   

  //tree.add(new Walker(width / 2, height / 2));
  radius *= shrink;
  for (int i = 0; i < maxWalkers; i++) {
    walkers.add(new Walker());
    radius *= shrink;
  }
}

void draw() {
  background(0);

  for (int i = 0; i < tree.size(); i++) {
    tree.get(i).show();
  }

  for (int i = 0; i < walkers.size(); i++) {
    walkers.get(i).show();
  }

  for (int n = 0; n < iterations; n++) {
    for (int i = walkers.size() - 1; i >= 0; i--) {
      Walker walker = walkers.get(i);
      walker.walk();
      if (walker.checkStuck(tree)) {
        walker.setHue(hue % 360);
        hue += 2;
        tree.add(walker);
        walkers.remove(i);
      }
    }
  }

  //float r = walkers.get(walkers.size() - 1).r;
  while (walkers.size() < maxWalkers && radius > 1) {
    radius *= shrink;
    walkers.add(new Walker());
  }
  
}
