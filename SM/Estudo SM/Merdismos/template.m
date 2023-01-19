%%
clear all;
close all;
clc;

%% VER A POTÊNCIA
Ta=0.01;
T=0.1; %VER PERÍODO PELO MDC
t = 0:Ta:4*T-Ta;
x = 2*cos(20*pi*t+pi/3)+3*sin(100*pi*t-pi/4); %MUDAR
%y = x.*x; SE SINAL ELEVADO
figure(1);
hold on
plot(t,x)
%plot(t,y) SE SINAL ELEVADO
potencia(x, Ta, T)


%% TRIGNOMERDAS
%sen(a + b) = sen(a)*cos(b) + sen(b)*cos(a)
%cos(a + b) = cos(a)*cos(b) - sen(a)*sen(b)
%sin^2(a) + cos^2(a) = 1
%cos^2(a) = cos(2a) + 1
% e^(jp) = cos(p) + j*sin(p)


%% VER QUANDO DOIS SINAIS SÃO IGUAIS
clear all;
close all;
clc;

Ta = 0.001;
t = 0:Ta:5-Ta;
A = sqrt(2); %MUDAR
fase = -pi/4; %MUDAR
x = 0.5*cos(2*pi*t + pi) + sqrt(2)*cos(2*pi*t + pi/4) + A*cos(2*pi*t + fase); %MUDAR
y = 3/2 * cos(2*pi*t); %MUDAR
hold on
plot(t,x)
plot(t,y)
 
%% VER ESPETRO A PARTIR DE SINAL
clear all;
close all;
clc;

Ta = 0.001;
t = 0:Ta:5-Ta;
f=1;
fase=0;%DESLOCA NO X 
mult=1; %0 PICO <---, 1/2 PICO ---><---, 1 PICO --->
A=0.5; %AMPLITUDE
B=0.5; %ORDENADA NA ORIGEM
%ONDA SINUSOIDAL
y=cos(2*pi*t + pi);
subplot(3,2,1)
plot(t,y);
subplot(3,2,2)
[Y,fz] = Espectro(y,Ta,0);
stem(fz,abs(Y))
%ONDA QUADRADA
z=A*square(t*2*pi*f)+B;
subplot(3,2,3)
plot(t,z);
subplot(3,2,4)
[Z,fz] = Espectro(z,Ta,0);
stem(fz,abs(Z))
%ONDA TRIANGULAR
w=A*sawtooth(t*2*pi*f+fase, mult)+B;
subplot(3,2,5)
plot(t,w);
subplot(3,2,6)
[W,fw] = Espectro(w,Ta,0);
stem(fw,abs(W))
%figure(2) %PARA VERIFICAR SE DEU CERTO, TEM DE DAR IGUAL AO SINAL INICIAL
%[q, t] = Reconstroi(W, fw);
%plot(t,q);
% VER SINAL A PARTIR DE ESPETRO É FAZER ENGENHARIA REVERSA DISTO ACIMA, MEXER O SINAL ATÉ ESPETRO DAR IGUAL



%% FORMATAÇÃO DE PLOTS (ver aula1)
%NOTA!!!! continuo (-), com pontos (.), tracejado (--) e depois a inicial da cor
%r-vermelho; b- blue; k- black; g- verde; y- amarelo; w- branco;
%LineWidth : largura de linha
figure(31);
plot(t, x, '-r'); 
hold on;
plot(t, y, '--b', 'LineWidth', 2);
plot(t, z, '.-', 'Color', [0.2 0.8 0.2]); %a ultima parte corresponde ao codigo RGB (vermelho, verde, azul)
plot(t, z, '.-g'); 
plot(t, w, '-y', 'LineWidth', 2);


%% FASOR SINTAXE
%fasor na variável F
%T= [0:0.01:2]';
%x = abs(F)*cos(2*pi*t + angle(F));
%plot(t,x);

Ta = 0.0001;
t = 0:Ta:10-Ta;
F = 3 + 4i;
x = abs(F) * sin(2*pi*t + angle(F));
plot(t, x);


%% WINDOWING
%x (N x 1)
% N = length(x);
% y = x.*blackman(N);
% X = fftshift(fft(y)/N);

%% EXPERIMENTOS COM NULLPHASESIGNAL
clear all;
close all;
clc;

Ta=0.01;
T=3;
t = 0:Ta:4*T-Ta;
x = cos(2*pi*t+pi/4);
y = cos(2*pi*t);
figure(1)
plot(t,x)
figure(2)
null = NullPhaseSignal(x, Ta);
figure(3)
[esp, f] = Espectro(y, Ta, 0);
stem(f, esp)
figure(4)
null1 = NullPhaseSignal(y, Ta);

%% EXPERIMENTOS COM MAINCOMPONENT1 da bruna
clear all;
close all;
clc;

Ta = 0.01;
t = [0 : Ta: 4];
x = 4*sin(4*pi*t+pi/4) + 3*sin(10*pi*t);
y = 4*sin(4*pi*t+pi/4);
c = MainComponent(x, Ta);
figure(1);
subplot(2,1,1);
plot(t, c);
subplot(2,1,2);
plot(t, y);

%% EXPERIMENTOS COM MAINCOMPONENT2 E SPECTRUM e do butuc 

Ta = 0.01;
t = 0:Ta:5-Ta;
x = sin(2*pi*t)+sin(3*pi*t)+sin(4*pi*t);
figure(2)
subplot(2,1,1)
plot(t, x);
figure(2)
subplot(2,1,2)
Spectrum(x, Ta);
sign = MainComponent(x, Ta);
figure(3)
subplot(2,1,1)
plot(t, sign)
subplot(2,1,2)
Spectrum(sign, Ta)

%% Experimentos com MainComponent do rafa

Ta = 0.01;
t = 0:Ta:10-Ta;
x = sawtooth(2*pi*t, 1/2);
[c, tc] = MainComponent(x, Ta);
plot(t, x, tc, real(c)); %real() evita warning


