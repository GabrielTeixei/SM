%% Clear
clear;
close all;
clc;

%% Ex1

Ta=0.01;

%   a)

t=0:Ta:5;
x=2*sin(4*pi*t);
figure;
plot(t,x);

%   b)

y=cos(10*pi*t);
figure;
plot(t,y);

%   c)

z=x.*y;
figure;
plot(t,z);

%   d)

t=0:Ta:10;
w=3*sin(pi*t)+2*sin(6*pi*t);
figure;
plot(t,w);

%   e)

t1=0:Ta:5;
t2=0:Ta:5;
n1=length(t1);
n2=length(t2);
q=zeros(n1,n2);
for n=1:n1
    q(n, :)=2*sin(2*pi*(2*t1(n)+t2));
end

figure;
surf(T1,T2,q,'EdgeColor','none');

%% Ex2
t=0:Ta:5;
figure;
subplot(3,1,1), plot(t,x);
subplot(3,1,2), plot(t,y);
subplot(3,1,3), plot(t,z);

Ta=0.1;
t=0:Ta:5;
x=2*sin(4*pi*t);
y=cos(10*pi*t);
z=x.*y;
figure;
subplot(3,1,1), plot(t,x);
subplot(3,1,2), plot(t,y);
subplot(3,1,3), plot(t,z);

%% Ex3

Ta=0.01;
t=0:Ta:5;
x=2*sin(4*pi*t);
y=cos(10*pi*t);
z=x.*y;
t=0:Ta:10;
w=3*sin(pi*t)+2*sin(6*pi*t);
t=0:Ta:5;
figure
subplot(4,1,1), plot(t,x,'R-', LineWidth=0.5);
subplot(4,1,2), plot(t,y,'B--', LineWidth=2);
subplot(4,1,3), plot(t, z, 'G-O');
t=0:Ta:10;
subplot(4,1,4), plot(t,w,'Y-',LineWidth=3);

%% Ex4

figure;
mesh(t1,t2,q);
colorbar;
cmap=colormap;
cmap_gray = [[0:(1/64):1]' [0:(1/64):1]' [0:(1/64):1]'];
colormap(cmap_gray);

%% Ex5

Ta=1/25;
t=0:Ta:5;
x1=-5:Ta:5;
x2=-5:Ta:5;
N=length(t);
N1=length(x1);
r=zeros(N1,N1);

for n=1:N
    tic
    for i=1:N1
        r(i,:) = 2*sin(2*pi*sqrt(x1(i)^2+x2.^2)-2*pi*t(n));
    end
    mesh(x1,x2,r);
    view(2)
    drawnow();
    paus(Ta-toc);
end