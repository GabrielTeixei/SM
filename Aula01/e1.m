%%
x = 1:3;
y = 1:4;
[xx,yy] = meshgrid(x,y)
%%
% 
x = linspace(-3,3,51);
y = linspace(-3,3,51);
[XX,YY] = meshgrid(x,y);
plot(XX,YY(:,1),'k')
hold on
plot(XX(1,:),YY','k')

expo1 = -((XX+1).^2 + (YY+1).^2);
expo2 = -5*((XX-1).^2 + (YY-1).^2);
f = 2*exp(expo1) + exp(expo2);
mesh(x,y,f), axis tight


colorbar









