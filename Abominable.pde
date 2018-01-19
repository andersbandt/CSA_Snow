PImage img;
float x = 700;



class Abominable {
  
  Abominable() {
    img = loadImage("abominable.gif");
  }
  
  void display() {
    image(img,x,200,200,200);
    x-= .75;
    
    
    
    
    if (x < 450) {
    fire.create_fire();
    fire.update_fire();
    fire.draw_fire();
    }
    
    if (x == -10) {
      x = -10;
    }
  
  
  
  
}
}