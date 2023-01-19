
clear
close all
clc
%alterei tudo de fa para ta
load("C:\Users\Gabri\OneDrive\Ambiente de Trabalho\SM\Aula08\Guitar02.mat")

figure(1)
ta = 1/Ta;
t = (0:(length(x)-1))*ta;
subplot(1,2,1)
plot(t,x)
title('Sinal original')
xlabel('Tempo (seg)')
ylabel('Sinal')
grid on
%sound(x,ta)

MaxDelay = 0.3;
NumComp = 15;
Freq = 1;
Delay = 1;
Gain = 0.5; % 0 < Gain < 1
y = Chorus(x,ta,MaxDelay,NumComp);
%y = Flanger(x,ta,MaxDelay,Freq);
%y = Reverb(x,ta,Delay,Gain);
subplot(1,2,2)
plot(t,y)
title('Sinal modificado')
xlabel('Tempo (seg)')
ylabel('Sinal')
grid on 
sound(y,ta)

figure(2)
subplot(1,2,1)
[X,fx] = espetro(x,ta);
plot(fx,abs(X))
xlim([-5e3 5e3])
ylim([0 5e-3])  
grid on
title('Espetro do sinal original')
xlabel('Frequência (Hz)')
ylabel('Magnitude')

subplot(1,2,2)
[Y,fy] = espetro(y,ta);
plot(fy,abs(Y))
xlim([-5e3 5e3])
ylim([0 6e-3])
grid on
title('Espetro do sinal modificado')
xlabel('Frequência (Hz)')
ylabel('Magnitude')

% Para o ex. 4, trocar a Fa para metade.