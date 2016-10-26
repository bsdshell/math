if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="mybook-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
draw((-4,0) -- (4,0), arrow=Arrow(TeXHead));
draw((0,-4) -- (0,4), arrow = Arrow(TeXHead));

unitsize(1cm);
import contour;
real f(real x, real y) { return 6*y^2 -
x*(x+1)*(2*x+1); }
guide[][] thegraphs = contour(f,
a=(-4,-4), b=(4,4), new real[] {0});

/* The next line draws the first (and
only) entry in thegraphs. This entry
is itself an array, since it
represents a disconnected path. */

draw(thegraphs[0]);
