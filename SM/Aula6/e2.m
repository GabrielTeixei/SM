%%II. Quantização da Amplitude dos Sinais
%exercicio 1 com 2 bits
clc
Ta = 0.2; %periodo de amostragem
t = [0:Ta:5];

x = sin(2*pi*t);

[T1, y1] = ReconstroiSinal(x,Ta);

Amp = 1;
vfs = 2*Amp;
nb = 2; %numero de bits 
Delta = vfs/2^nb;

part = [-1+Delta:Delta:1-Delta];
codebook = [-1+Delta/2:Delta:1-Delta/2]; 

[index,quants] = quantiz(y1,part,codebook);

plot(T1,y1,T1,quants)
grid on
title("nb = 2")
legend("F Original","F Quantizado")
xlabel("Tempo(seg")
ylabel("Sinal")
xlim([0 5])

%----exercico 2 -------------
figure(4)
[X,f] =Espetros(quants,Ta);
[Y,fy] = Espetros(x,Ta);


plot(f,abs(X),fy,abs(Y));
title('Espetro Quantização do sinal, nbit=2')
xlabel('Frequencia')
ylabel('Magnitude')
legend("Espetro Quantizado", "Espetro Original")




%%------- com 3 bits -------------
figure(2)
Ta = 0.2; %periodo de amostragem
t = [0:Ta:5];

x = sin(2*pi*t);

[T1, y1] = ReconstroiSinal(x,Ta);

Amp = 3;
nb = 3; %numero de bits 
Delta = Amp/2^nb;

part = [-1+Delta:Delta:1-Delta];
codebook = [-1+Delta/2:Delta:1-Delta/2]; 

[index,quants] = quantiz(y1,part,codebook);

plot(T1,y1,T1,quants)
grid on
title("nb = 3")
legend("F Original","F Quantizado")
xlabel("Tempo(seg")
ylabel("Sinal")
xlim([0 5])

%%------- com 4 bits --------------
%%
figure(3)

Ta = 0.2; %periodo de amostragem
t = [0:Ta:5];

x = sin(2*pi*t);

[T1, y1] = ReconstroiSinal(x,Ta);

Amp = 4;
nb = 4; %numero de bits 
Delta = Amp/2^nb;

part = [-1+Delta:Delta:1-Delta];
codebook = [-1+Delta/2:Delta:1-Delta/2]; 

[index,quants] = quantiz(y1,part,codebook);

plot(T1,y1,T1,quants)
grid on
title("nb = 4")
legend("F Original","F Quantizado")
xlabel("Tempo(seg")
ylabel("Sinal")
xlim([0 5])

figure(5)
[X,f] =Espetros(quants,Ta);
[Y,fy] = Espetros(x,Ta);

plot(f,abs(X),fy,abs(Y));
title('Espetro Quantização do sinal, nbit=4')
xlabel('Frequencia')
ylabel('Magnitude')
legend("Espetro Quantizado", "Espetro Original")

