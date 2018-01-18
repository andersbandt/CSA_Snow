Sun sun;
Snowman man;
Ground ground;
Moon moon;
Tree tree;
Fire fire;
Stickman stanley;


float background_b = 82.5;
float pct = 0.0;
float step = 0.005;

void settings(){
size(700, 400);
}

void setup(){
  fire = new Fire();
  sun = new Sun();
  man = new Snowman(75,360,75);
  ground = new Ground();
  moon = new Moon();
  tree = new Tree();
  stanley = new Stickman(30);
  
snowArray=new Snow[300];
  for (int i=0; i<snowArray.length; i++) {
    snowArray[i]= new Snow();
  }
}

void draw(){
  //new stuff
  stanley.stickman();
  
  background(0, 0, background_b);
  sun.display();
  moon.display();
  ground.display();
  man.display();
  tree.display();
  
  for (int i=0; i<snowArray.length; i++) {
    snowArray[i].addPhysics();
    snowArray[i].snow();
  }
  
  pct += step;
  background_b = 82.5 + 82.5*sin(pct+PI*(.75));
  
  if (background_b < 82.5) {
    fire.create_fire();
    fire.update_fire();
    fire.draw_fire();
  }
  
  
}