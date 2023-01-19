%% Clear
clear;
close all;
clc;

%% Ex1
t=0:0.01:5;

x=2*sin(4*pi*t);  %f=4*pi/2*pi=2 T=1/f=1/2  A=2

y=sin(10*pi*t+pi/2);    %f=10*pi/2*pi=5 T=1/f=1/5 A=1

z=sin(6*pi*t)+sin(8*pi*t);  %f=mdc(6*pi, 8*pi)/2pi=1 T=1/f=1/1=1 A=1+1=2

w=sin(6*pi*t)+sin(8*pi*t+0.1);  %f=mdc(6*pi, 8*pi)/2pi=1 T=1/f=1/1=1 A=1+1=2

q=sin(6*pi*t)+sin(7*pi*t)+sin(8*pi*t);  %f=mdc(6*pi, 7*pi, 8*pi)/2pi=0.5 T=1/f=1/0.5=2 A=1+1+1=3

figure;
subplot(5,1,1), plot(t,x); 
subplot(5,1,2), plot(t,y);
subplot(5,1,3), plot(t,z);
subplot(5,1,4), plot(t,w);
subplot(5,1,5), plot(t,q);

%% Ex2

%T=1/mdc(f1:fn) ?????

%% Ex3
Ta=0.01;

t=0:Ta:5;
a=2*sin(2*pi*t)+cos(5*pi*t);
ax=potencia(a,Ta,0.5)

px=potencia(x,Ta,1/2)
py=potencia(y,Ta,1/5)
pz=potencia(z,Ta,1)
pw=potencia(w,Ta,1)
pq=potencia(q,Ta,2)

%% Ex4

t=0:Ta:1/2-Ta;

N=3;
A=ones(1,3);
o=rand(3)*2*pi-pi;
f1=3e3;
f2=f1/1.1;
f3=f1/1.2;
x1=A(1)*sin(2*pi*f1*t+o(1))
x2=A(2)*sin(2*pi*f2*t+o(2))
x3=A(3)*sin(2*pi*f3*t+o(3))







