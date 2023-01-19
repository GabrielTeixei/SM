%%slide 54

x = linspace(-1,1,51);
y = linspace(-1,1,51);
[XX,YY] = meshgrid(x,y);
plot(XX,YY(:,1),'k')


expo1 = -abs(XX+YY) 
f = cos(4*pi*(XX +YY)).*exp(expo1)
mesh(x,y,f), axis tight




