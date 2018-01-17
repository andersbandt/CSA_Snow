Sun sun;
Snowman man;
Ground g;

void settings(){
size(700, 400);
}

void setup(){
  sun = new Sun(100,100,75);
  man = new Snowman(75,360,75);
  g = new Ground();
  
snowArray=new Snow[400];
  for (int i=0; i<snowArray.length; i++) {
    snowArray[i]= new Snow();
  }
}

void draw(){
  background(43, 35, 34);
  g.display();
  sun.display();
  man.display();
  
  for (int i=0; i<snowArray.length; i++) {
    snowArray[i].addPhysics();
    snowArray[i].snow();
  }
  
}