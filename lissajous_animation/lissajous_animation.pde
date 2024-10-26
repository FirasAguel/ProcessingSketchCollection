float theta = .0, step = .001*PI;
int r = 300, hue=0,h,hstep=1;
float x1, y1, x2, y2,wx=7,wy=9,phix=PI/2,phiy=PI/3,theta0=0,phixstep=.01;

void setup(){
  colorMode(HSB);
  background(0);
  smooth(); 
  frameRate(60);
  size(800,800);
  theta0 =0;
  stroke(255);
  strokeWeight(3);  // Default
}

void draw(){
  background(0);
  theta = theta0;
  x2=width /2 + r*cos(wx*theta0+phix);
  y2=height/2 + r*cos(wy*theta0+phiy);
  h=0;
  hue++;
  while(theta < 7*PI/12+theta0){
    x1 = x2; y1 = y2;
    x2 = width /2 + r*cos(wx*theta+phix);
    y2 = height/2 + r*cos(wy*theta+phiy);
    theta+=step;
    h++;
    stroke((hue+h)%256,255,255);
    line(x1, y1, x2, y2);   
  }
  theta0+=0.001*PI;
}
