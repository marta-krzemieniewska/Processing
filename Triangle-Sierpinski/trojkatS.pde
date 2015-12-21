float ax = 100;
float ay = 400;
float bx = 250;
float by = 100;
float cx = 400;
float cy = 400;
float dx = 100;
float dy = 400;


  size(500,500);
  background(245);
  strokeWeight(1);
   //line ( ax,ay,bx,by);
  //line (ax,ay,cx,cy);
  //line (bx,by,cx,cy);


  for (int i = 0; i < 17000; i++)
 {

float x = random(0,3);

  if (x<=1)
  {
 stroke(0,i/66,0);
point( (dx+ax)/2,(dy+ay)/2);
dx = (dx+ax)/2;
dy = (dy+ay)/2;
  }

if ( (1<x) && (x<2) )
{
stroke(i/66,0,0);
point((dx+bx)/2,(dy+by)/2);
dx = (dx+bx)/2;
dy = (dy+by)/2;
}

if (2<x)
{
 stroke(0,0,i/66);
 point ( (dx+cx)/2,(dy+cy)/2);
dx = (dx+cx)/2;
dy = (dy+cy)/2;
}


 }
