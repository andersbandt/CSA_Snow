Snow [] snowArray;
class Snow {
  //global variables
  float xlocation;
  float ylocation;
  float xUpdate;
  float yUpdate;
  float acceleration;
  float velocity;
  float flakeSize;
  float wind;
  //constructor initializes variables
  Snow() {
    xlocation=(float)Math.random()*width;
    ylocation=0;
    xUpdate=(float)Math.random();
    yUpdate=0;
    acceleration=0;
    velocity=(float)Math.random();
    flakeSize=(float)Math.random()*8;
    wind=.1;
  }
  //adds real flakes
  void addPhysics() {
    yUpdate=acceleration+velocity;

  //  if (mousePressed) {
 //     xUpdate+=wind;
  //    if (xUpdate>5) {
 //       xUpdate*=-1;
   //   } else if (xUpdate<-5) {
 //       xUpdate*=-1;
 //     }
 //   }
  }
  //makes the snow
  void snow() {
    fill(255, 255, 255);
    ellipse(xlocation+=xUpdate, ylocation+=yUpdate, flakeSize, flakeSize);
    if (ylocation>height) {
      ylocation=0;
    }
    if (xlocation>width) {
      xlocation=0;
    }
  }
}