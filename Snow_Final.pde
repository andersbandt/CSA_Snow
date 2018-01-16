Sun sun;
Snowman man;
ArrayList allSnow = new ArrayList<Snow>();

void settings(){
size(700, 400);
}

void setup(){
  sun = new Sun(100,100,50);
  man = new Snowman(75,370,50);
  
  for (int i = 0; i < 10; i++) {
    allSnow.add(new Snow(random(20,60)));
}
}

void draw(){
  sun.display();
  man.display();
 /* for (Snow flake: allSnow) {
    flake.display();
  }
*/
}