function [X,f] = Espetros(x,Ta)
    %UNTITLED8 Summary of this function goes here
    %   Detailed explanation goes here
    N = length(x);
    X = fft(x);
    X = fftshift(X)/N;
    fa = 1/Ta;
    df = fa/N;
    f = (0:N-1) * df - fa/2;
end