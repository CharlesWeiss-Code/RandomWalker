
ArrayList<walker> walkers = new ArrayList<walker>();
void setup() {


  for (int i = 0; i < 500; i++) {
    walkers.add(new walker());
  }
  background(0);
  fullScreen();
}

void draw() {
  for (walker w : walkers) {
    w.step();
  }
}
