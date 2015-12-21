import geomerative.*;
PImage syreny;
PImage kalipso;
PImage penelope;
RShape napis;

float muchyX[]= new float[100];
float muchyY[]= new float[100];
float muchyX2[]= new float[100];
float muchyY2[]= new float[100];

void setup()
{
   RG.init(this); size (600,600);
for(int m=0;m<100;m++)
{ muchyX[m]=40;
  muchyY[m]=170;
}
for(int m=0;m<100;m++)
{ muchyX2[m]=240;
  muchyY2[m]=340;
}
}
 
void draw ()
{
  background(255);
 
  beginShape ();
  
  stroke(0);
strokeWeight (2);

 
beginShape();
curveVertex (50,70);
curveVertex(50,70);
curveVertex (150,45);
 
curveVertex (220,70);
curveVertex (220,70);
endShape();
if (dist(150,70,mouseX,mouseY)<10) fill (255,0,0);
ellipse (150,70,30,20);
noFill();

  fill (100);
textSize(16);
text ("Cyclope",10,30);
noFill();


syreny = loadImage("syreny2.jpg");
image (syreny, 350,100, 200,220);
text("Sirens",470,340);
if (dist(450,200,mouseX,mouseY)<150) for (int i=1;i<250; i=i+30) 
{
 strokeWeight (2);
 stroke(i-50);
  ellipse (450,200,i+random(-2,2),i+random(-2,2)); 
stroke (70);
line (450,200,mouseX,mouseY) ;
}
kalipso = loadImage("kalipso.jpg");
image (kalipso, 200,380, 250,170);
text("Kalipso",325,570);

if (dist(325,460,mouseX,mouseY)<100) for (int i=0;i<250; i=i+20) 
{
strokeWeight (3);
line (200+i,380,200+i,550);
line (200,380+i*170/250,450,380+i*170/250);
}
text("Home",100,250);
penelope = loadImage("penelope.jpg");

if (dist(100,260,mouseX,mouseY)<70) {
  
  image (penelope, 40,170, 200,170);

for (int m=0;m<100;m++)
{
 colorMode(HSB);
 strokeWeight(2);
 muchyX[m]=muchyX[m]+random(-5,5);
  muchyY[m]=muchyY[m]+random(-5,5);
   muchyX2[m]=muchyX2[m]+random(-5,5);
  muchyY2[m]=muchyY2[m]+random(-5,5);
  point(muchyX[m],muchyY[m]);
  point(muchyX2[m],muchyY2[m]);
  stroke(m+2,255,255);
};
}
colorMode(RGB);
}

 


