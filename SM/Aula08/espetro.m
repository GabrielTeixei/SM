function [X,f] = espetro(x,Ta)
% X é vetor da mesma dimensão de x, com coeficientes da DFT de x(t)
% f é vetor da mesma dimensão de x, com as frequências de cada componente de X
N = length(x);
Fa = 1/Ta;

f = (0:N-1)*Fa/N - Fa/2; % ou f = -Fa/2:Fa/N:Fa/2
X = fftshift(fft(x))/N;
end