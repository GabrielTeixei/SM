%% Exercício 1 Guião 6 parte 2
clc
clear
%exercio 1
Ta = 0.001;
N = 10000;

[xt,t] = geraSinal(N,Ta);

x = sin(2 * pi * t);

figure(1)
plot(t,xt,"b")
xlabel("Tempo (s)")
ylabel("Sinal")
hold on

plot(t,x,"r",LineWidth=2)
legend("Filtrado","Original")
grid on
%exercio 2
[X,f] = Espetros(xt,Ta);

figure(2)
plot(f,abs(X))
xlim([-25 25])
xlabel("Frequência Hz")
ylabel("Magnitude")
grid on
