%% Clear
clear;
close all;
clc;

%% Ex1

% É fácil, cos(a+b)=cos(a)cos(b)-sen(a)sen(b)

%% Ex2

% Mais integrais fds

%% Ex3

Ta=0.01;
f0=1;
Np=6;
a=zeros(100,1);
b=zeros(100,1);
impares=1:2:100;
b(impares)=4./(impares*pi);

[x,t]= SinalFourier(Ta, f0, Np, a, b);

figure;
plot(t,x);

%% Ex4

Ta=0.01;
f0=1;
Np=6;
a=zeros(100,1);
b=zeros(100,1);
impares=2:2:100;
a(impares)=4./(impares*pi);

[x,t]= SinalFourier(Ta, f0, Np, a, b);

figure;
plot(t,x);
title("Função Par")

a=zeros(100,1);
b=zeros(100,1);
impares=2:2:100;
b(impares)=4./(impares*pi);

[x,t]= SinalFourier(Ta, f0, Np, a, b);

figure;
plot(t,x);
title("Função Ímpar")

%% Ex5

% Função CoefsFourier

%% Ex6

Ta=0.01;
T0=1;
K=4;
t=0:Ta:K-Ta;
mult=0.5;
fase=0;
f=1;
B=0;
A=1;

x=A*sawtooth(t*2*pi*f+fase, mult)+B;
figure;
plot(t,x);

[a, b]=CoefsFourier(Ta,T0,x,100);
[x, t]=SinalFourier(Ta,f,K,a,b);

figure;
plot(t,x);
