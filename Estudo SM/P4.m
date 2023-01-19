%% Clear
clear;
close all;
clc;

%% Ex1

% Função Espetro

%% Ex2

% a)

T=1;
Ta=0.01;
k=10;
t=0:Ta:(k*T-Ta);

x=sin(2*pi*t);

figure;
Espetro(x,Ta,0);

% b)

Ta=0.01;
t=0:Ta:5;

y=sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t-pi/4);
figure;
Espetro(y,Ta,0);

% c)

z = (square(2*pi*1*t)+1)/2;

figure;
Espetro(z,Ta,0);

% d)

q=sawtooth(2*pi*1*t + pi/2 , 1/2);

figure;
Espetro(q,Ta,0);

%% Ex3

% Sucexcexcexcexcexfully added

%% Ex4

Ta=1/20;
t=0:Ta:5;
A=1;

som=0;
fM=0;
for i=1:20
    freq=randi(20);
    if fM<freq
        fM=freq;
    end
    fase=rand()*2*pi-pi;
    som=som+A*sin(2*pi*freq*t+fase);
end

figure;
[X,f]=Espetro(som,Ta,0);

figure;
[X2,f2]=Espetro(som,Ta,1);

%% Ex5

% Copiei do Pedro, Reconstroi.m

[x,t]=Reconstroi(X,f);
figure;
plot(t,x);
%[x,t]=Reconstroi(X2,f2);
%figure;
%plot(t,x);

%% Ex6

% Não acabada

% a)

x=-5:0.01:5;
y=-5:0.01:5;
N=length(x);
z=zeros(N,N);
for k=1:N
    z(n,:)=sin(2*pi*(2*x(k)+y));
end

% b)

w=zeros(N,N);
for k=1:N
    w(n,:)=sin(2*pi*sqrt((x(k)^2+y^2)));
end
