T = 1/25;
x1 = -5:T:5;
x2 = -5:T:5;

t = 0:T:5;

N = length(t);
[x1,x2] = meshgrid(x1,x2);


for k = 1 : N
    r = 2*sin(2*pi*sqrt(x1.^2+x2.^2)-2*pi*t(k));

    mesh(x1,x2,r);
    view(2);
    drawnow();

end 