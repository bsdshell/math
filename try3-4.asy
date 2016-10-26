if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="try3-4";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

unitsize(1cm);
draw((-2,0) -- (2,0), arrow=Arrow(TeXHead));
draw((0,-2) -- (0,2), arrow = Arrow(TeXHead));

unitsize(3cm);
import graph;
pair f(real t) { return (t^2, t); }
path g = graph(f, 0, sqrt(2));
draw(g);
