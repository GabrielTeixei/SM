%%Ex 1. Pt 2

%% a)𝑥(𝑡) = sin(2𝜋𝑡), amostrado com 𝑇𝑎 = 0.2 seg., observado durante 5 seg.

figure(1)
Ta = 0.2; %periodo de amostragem
t = [0:Ta:5];

x = sin(2*pi*t)';

[t1,y]=ReconstroiSinal(x,Ta);
plot(t1,y)
xlim([0 5])
xlabel('Tempo');
ylabel('Sinal');
hold on
grid on
plot(t,x,'.') %ver se esta bem 


%%b)𝑦(𝑡) = sin(10𝜋𝑡) + cos(12𝜋𝑡) + cos(14𝜋𝑡 − 𝜋/4), registado durante 5 seg, com
%?𝑎 = 0.04 seg.
figure(2)
Ta = 0.04; %periodo de amostragem
t = [0:Ta:5];

x =sin(10*pi*t)+cos(12*pi*t)+cos(14*pi*t-pi/4);

[t1,y]=ReconstroiSinal(x,Ta);
plot(t1,y)
xlim([0 5])
xlabel('Tempo');
ylabel('Sinal');

hold on
grid on 
plot(t,x,".")%ver se esta bem 









