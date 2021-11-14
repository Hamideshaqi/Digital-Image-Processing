function [U,V] =dftuv(m,n)
u=single(0:(m-1));
v=single(0:(n-1));
idx=find(u>m/2);
u(idx)=u(idx)-m;
idy=find(v>n/2);
v(idy)=v(idy)-n;
[V,U]=meshgrid(v,u);
end