class Tree {
  
  float tree_r = 56;
  float tree_g = 130;
  float tree_b = 22;
  
  Tree() {
    
  }
  
  
  
  void display() {
    fill(71, 46, 26);
    rect(450,250,35,100);
    fill(tree_r,tree_g,tree_b);
    noStroke();
    arc(475, 250, 50, 50, 0, HALF_PI);
    arc(460, 250, 50, 50, HALF_PI, PI);
    arc(450, 260, 60, 60, HALF_PI, 2*PI);
    arc(480, 260, 60, 60, PI, 2*PI);
    arc(480, 260, 70, 70, PI, 2*PI);
    ellipse(480,260,70,70);
     
  }
  
  void fire() {
    for (int i = 0; i < 183; i ++) {
      tree_r += 1;
    }
    
    for (int i = 0; i < 90; i ++) {
      tree_g -= 1;
    }
    
    for (int i = 0; i < 16; i ++) {
      tree_b -= 1;
    }   
  }
  
  void destroy() {
    
    
  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}