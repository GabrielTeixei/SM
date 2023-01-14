load("Guitar02.mat");
fa = 1/Ta;
sound(x, fa)

N=length(x);
t = (1:N)*Ta;

figure(1)
plot(t,x)
title("Sinal no Dominio do Tempo")
xlabel("Tempo(s)")
ylabel("x(t)")
grid on 

%617997 segundo da musica
resposta = Ta*N 

