Sun sun;
Snowman man;
Ground ground;
Moon moon;


float background_b = 82.5;
float pct = 0.0;
float step = 0.005;

void settings(){
size(700, 400);
}

void setup(){
  sun = new Sun();
  man = new Snowman(75,360,75);
  ground = new Ground();
  moon = new Moon();
  
snowArray=new Snow[300];
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
  
  pct += step;
  background_b = 82.5 + 82.5*sin(pct+PI*(.75));
  
  
}