%exercicio 2
%% a) 𝑥(𝑡) = sin(2𝜋𝑡), registado durante 2 e 100 períodos.
Np = 4;
Ta = 0.01;
T = 1;
N = T/Ta * Np;
t = (0:N-1)*Ta;
x = sin(2.*pi.*t);
[X,f] = Espetros(x,Ta);


figure(1)
stem(f,abs(X))
title("Espetro 1")
xlabel('Frequência')
ylabel('Amplitude')
xlim([-10 10])


% teste do exercico 4 
[x,t] = exercico4(X,f);
plot(t,x)

%% 𝑦(𝑡) = sin(10𝜋𝑡) + cos(12𝜋𝑡) + cos(14𝜋𝑡 − 𝜋/4)

Np = 4;
Ta = 0.01;
T = 1;
N = T/Ta * Np;
t = (0:N-1)*Ta;
x = sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t-pi/4);
[X,f] = Espetros(x,Ta);

figure(2)
stem(f,abs(X))
title("Espetro 2")
xlabel('Frequência')
ylabel('Amplitude')
xlim([-10 10])


%%c) 𝑦(𝑡) = 10 + 14cos(20𝜋𝑡 − 𝜋/3) + 8cos(40𝜋𝑡 + 𝜋/2), registado durante 100
%períodos. 


Np = 4;
Ta = 0.01;
T = 1;
N = T/Ta * Np;
t = (0:N-1)*Ta;
x =10+ 14*cos(20*pi*t-pi/3)+8*cos(40*pi*t+pi/2);
[X,f] = Espetros(x,Ta);

figure(3)
plot(f,abs(X))
title("Espetro 3")
xlabel('Frequência')
ylabel('Amplitude')
xlim([-50 50])


 %% d) 𝑧(𝑡) – onda quadrada entre 0 e 1, de frequência 1 Hz, registada durante 5 seg.
Np= 4;
Ta =0.001;
T=5;
N= T/Ta;
t= (0:N-1)* Ta;
f0 = 1;
x = (square(2*pi*f0*t)+1)/2;


%quadrado 
figure(6)
plot(t,x)
xlim([0 5])
ylim([-0.5 1.5])
title("Espetro quadrado");

%espectro normal
figure(5)
[X,f] = Espetros(x,Ta);
plot(f,abs(X));
title("Espetro 4");
xlabel("f(Hz)");
ylabel("Amplitude"); 

%%e) 𝑞(𝑡) - onda triangular entre -1 e 1, de frequência 1 Hz, registada durante 5 seg


%fazer em casa

