if(!settings.multipleView) settings.batchView=false;
settings.inlinetex=true;
deletepreamble();
defaultfilename="asyexample-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

settings.render=16;
size(345.0pt,0);
import graph3;
currentprojection = perspective(20*dir(15,0));
real r1=5, r0=1;
int nu = 36, nv = 26;
path3 crossSection = Circle(r=r0, c=(r1,0,0), normal=Y, n= nu);
pen colorFunction(int u, real theta) {
real z = sin(u/nu * 2pi);
real t = (z + 1) / 2;
return t*red + (1-t)*lightblue;
}
surface torus = surface(crossSection, c=(0,0,0), axis=Z, n=nv,
angle1=90, angle2=10, color=colorFunction);
draw(torus);
