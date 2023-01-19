%% B)ESpetroq   e sinaç qual compomente DCdeste sinal 
Np = 4;
Ta = 0.01;
T = 1;

N = T/Ta * Np;
t = (0:N-1)*Ta;
%x = cos(2*pi*t)+0.8*sin(4*pi*t)+0.6*cos(6*pi*t-pi/4);
%x = 5+10*cos(4.*pi.*t-pi/3)+6*cos(8.*pi.*t+pi/2);

x = 20*sin(3*pi*t-2*pi/3)+16*sin(7*pi*t+2*pi/3)+10*sin(9*pi*t+pi/4)
[X, f] = Espetro(x,Ta);
stem(f,abs(X))
grid on
xlim([-6 6])
ylim([0 11])


