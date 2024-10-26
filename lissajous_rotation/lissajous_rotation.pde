float theta = .0, step = .003*PI;
int r = 300, hue=0;
float x1, y1, x2, y2,wx=7,wy=9,phix=PI/2,phiy=PI/3;

void setup(){
  colorMode(HSB);
  background(0);
  smooth(); 
  frameRate(60);
  size(800,800);
  theta=0;
  x2=width /2 + r*cos(wx*theta+phix);
  y2=height/2 + r*cos(wy*theta+phiy);
  stroke(255);
  strokeWeight(3);  // Default
}

void draw(){
  background(0);
  theta=0;
  while(theta < 2*PI){
    x1 = x2; y1 = y2;
    x2 = width /2 + r*cos(wx*theta+phix);
    y2 = height/2 + r*cos(wy*theta+phiy);
    theta+=step;
    line(x1, y1, x2, y2);   
  }
  phix+=0.001*PI;
}
