clc
%exercicio 1 %exercicio 2 feito
load('Guitar03.mat');

sound(x,fa)

figure(1)
Ta = 1/fa;
[X,f] = Espetros(x,Ta);

plot(f,abs(X)) %é compleco 
grid on 
title("1")
xlabel("frequencia")
ylabel("amplitude")
xlim([-4000 4000])


figure(2)
[x,t] = Reconstroi(X,f);
plot(f,x)   
title("2")

grid on 
%............

%exercico 2
figure(3)
load('Guitar03.mat');

sound(x,fa)
Ta = 1/fa;
[X,f] = Espetros(x,Ta);

plot(f,abs(X)) %é compleco 
title("3")
xlim([-4000 4000])

%-----------------------------------
% exercicio 3

%100 Hz e acima da frequência 400Hz. Reconstrua o sinal filtrado
figure(4)
Hf = zeros(1,length(x));
Hf( f>100 & f <400) = 1;
Hf(f>-400 & f<-100) = 1;
plot(f,Hf)
title("4")
xlim([-2000 2000])
ylim([0 1.1])
grid on 


%figure(5)
% sinal na gama de frequências de 400 Hz a 600 Hz
%Hf = zeros(1,length(x));
%Hf( f>400 & f <600) = 1;
%Hf(f>-600 & f<-400) = 1;
%plot(f,Hf)
%title("5")
%xlim([-2000 2000])
%ylim([0 1.1])
%grid on 

%600 kHz a 1.2 kHz.
%figure(6)
%Hf = zeros(1,length(x));
%Hf( f>600 & f <1200) = 1;
%Hf(f>-1200 & f<-600) = 1;
%plot(f,Hf)
%title("6")

%xlim([-2000 2000])
%ylim([0 1.1])
%grid on 









