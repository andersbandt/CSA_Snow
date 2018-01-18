Sun sun;
Snowman man;
Ground ground;
Moon moon;

float background_b = 82.5;
float pct = 0.0;
float step = 0.01;
boolean sky = true;

void settings(){
size(700, 400);
}

void setup(){
  sun = new Sun();
  man = new Snowman(75,360,75);
  ground = new Ground();
  moon = new Moon();
  
snowArray=new Snow[400];
  for (int i=0; i<snowArray.length; i++) {
    snowArray[i]= new Snow();
  }
}

void draw(){
  background(43, 35, background_b);
  sun.display();
  moon.display();
  ground.display();
  man.display();
  
  for (int i=0; i<snowArray.length; i++) {
    snowArray[i].addPhysics();
    snowArray[i].snow();
  }
  
  if (sky) {
    background_b += .1;
    
  }
  else {
    background_b -= .1;
  }
      if (background_b > 200) {
        sky = false;
      }
      
  if (background_b < 35) {
        sky = true;
      }    
      
      
  
  
  
}