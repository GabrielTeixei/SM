%exercicio 2
%% a) 𝑥(𝑡) = sin(2𝜋𝑡), registado durante 2 e 100 períodos.
Np = 4;
Ta = 0.01;
T = 1;
N = T/Ta * Np;
t = (0:N-1)*Ta;
x = sin(2.*pi.*t);
[X,f] = Espetros(x,Ta);

stem(f,abs(X))
title("Espetro")
xlabel('Frequência')
ylabel('Amplitude')