clear;

load("Guitar02.mat");

fa = 1/Ta;
fa_new = fa/2; 

Ta_new = 1/fa_new;

[X_new,f_new] = espetro(x,Ta_new);

[xRec_new,tRec_new] = reconstroi(X_new,f_new);

figure(1)
plot(tRec_new,real(xRec_new))
title("Sinal no Dominio do Tempo de fa/2")
xlabel("Tempo (s)")
ylabel("x(t)")
grid on 

figure(2)
plot(f_new,abs(X_new))  %espetro do sinal
title("Representação do Espetro de fa/2")
xlabel("Frequencia (Hz)")
ylabel("Magnitude")
grid on 
xlim([-5000 5000])  

sound(xRec_new, fa_new)


