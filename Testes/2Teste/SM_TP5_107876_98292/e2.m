clear;

load("Guitar02.mat");

[X,f] = espetro(x,Ta);

figure(1)
plot(f,abs(X))  %espetro do sinal
title("Representação do Espetro")
xlabel("Frequencia (Hz)")
ylabel("Magnitude")
grid on 
xlim([-5e3 5e3])%limite de X
