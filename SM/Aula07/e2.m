
%%II. Filtragem de sinais com ruído

% Exercício 1 Guião 6 parte 2
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

%exercicio 2 

[X,f] = Espetros(xt,Ta);

figure(2)
plot(f,X)
xlim([-25 25])
xlabel("Frequência Hz")
ylabel("Magnitude")
grid on

%3cercicio 3

[x,t] = geraSinal(10000,0.001);


figure(4)
plot(t,x)
 
[X,f] = Espetros(x,0.001);

figure(7)
plot(f,abs(X))

plot(f,abs(X))
xlim([-75 75])

 
newX = Filter(X,f,[0 5]);
[reconX, reconT] = Reconstroi(newX, f);
figure(3)
plot(t,x,'e',reconT)
hold on 
plot("real(reconX)",'w')



