function H =hpfilter(type ,M,N,D0,n)
if nargin==4
    n=1;
end
H=1-lpfilter(type ,M,N,D0,n);
end