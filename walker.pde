class walker {
  float x = 0;
  float y = 0;
  int maxWalk = 100;
  int stepRange = 10;
  int index = 0;
  int Clor = 0;
  int offsetx = int(random(-width/2,width/2));
  int offsety = int(random(-height/2,height/2));

  PVector[] locations = new PVector[maxWalk+1];


  void step() {
    if (index < maxWalk) {
      beginShape();
      int choice = int(random(8));
      if (choice == 0) {
        x-=stepRange;
      } else if (choice == 1) {
        x+=stepRange;
      } else if (choice == 2) {
        y-=stepRange;
      } else if (choice == 3) {
        y+=stepRange;
      } else if (choice == 4) {
        x+=stepRange;
        y+=stepRange;
      } else if (choice == 5) {
        x-=stepRange;
        y-=stepRange;
      } else if (choice == 6) {
        x-=stepRange;
        y+=stepRange;
      } else if (choice == 7) {
        x+=stepRange;
        y-=stepRange;
      }   
      push();
      translate(width/2+offsetx,height/2+offsety);
      locations[0] = new PVector(0, 0);
      

      colorMode(HSB);
      if (Clor == 100) {
        Clor = 0;
      }
      
      float clor = map(Clor,0,100,0,255);
      stroke(clor,clor,255);
      strokeWeight(1);
      //hue+=1;

      x = constrain(x, -width/2, width/2-1);
      y = constrain(y, -height/2, height/2-1);
      locations[index+1] = new PVector(x, y);
      PVector previous = locations[index];
      PVector current = locations[index+1];
      vertex(previous.x, previous.y);
      vertex(current.x, current.y);
      index+=1;
      Clor+=1;
      endShape();
      pop();
    }
  }
}
