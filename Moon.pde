class Moon{

float beginX = 350;  // Initial x-coordinate
float beginY = 310;  // Initial y-coordinate
float x = 0.0;        // Current x-coordinate
float y = 0.0;        // Current y-coordinate
float step = 0.003;    // Size of each step along the path
float pct = 0.0;      // Percentage traveled (0.0 to 1.0)
float moon_b = 82.5;

// Constructor
Moon(){
}

// Shows the sun
void display(){
  pct += step;
  if (pct < 100) {
    x = 275*cos(pct+PI*(.75));
    y = 210*sin(pct+PI*(.75));
  }
  
  fill(255,255,200);
      arc(beginX + x, beginY + y, 75, 75, 0, PI*4);
      fill(0, 0, moon_b);
      noStroke();
      arc(beginX + x + 15, beginY + y + 15, 75, 75, 0, PI*4);
      moon_b = 82.5 + 82.5*sin(pct+PI*(.75));
      stroke(0,0,0);
      
}

}