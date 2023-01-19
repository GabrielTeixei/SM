clear all;
close all;
clc;

Fo=1;
Np=10;
Ta=0.01;
Vamp = [20 16 10];
Vfreq = [3/2 7/2 9/2];
Vfas = [-2*pi/3 2*pi/3 pi/4];

% N = (1/Ta)*Np;
% t = (0:N-1)*Ta;
% y=20*sin(3*pi*t-2*pi/3)+16*sin(7*pi*t+2*pi/3)+ 10*sin(9*pi*t+pi/4);


[yt,t] = tempo_frequencia(1,Ta,Fo,Np,Vamp,Vfreq,Vfas);
figure(1)
plot(t,yt)
grid on 
xlabel("tempo(s)")
ylabel("Amplitude")
title("Sinal do dominio do tempo")



[yf,f] = tempo_frequencia(2,Ta,Fo,Np,Vamp,Vfreq,Vfas);
figure(2)
stem(f,abs(yf))
grid on
title("Sinal do dominio das frequencias")
xlabel("frequencia(Hz)")
ylabel("Amplitude")