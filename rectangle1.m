function f=rectangle(len,width,angle)
if width>len
    error('THE LENGTH OF RECTANGLE MUST BIGER THAN Width.')
end
f=zeros(400);
miny=200-len/2;
maxy=200+len/2;
minx=200-width/2;
maxx=200+width/2;
f(minx:maxx,miny:maxy)=1;
g=imrotate(f,angle);
g=imresize(g,size(f));
s=strel('square',3);
g=imclose(g,s);
f=g;
end

