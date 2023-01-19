function [X,f] = espetro(x,Ta)
    fa= 1/Ta;
    N= length(x);
    X= fftshift(fft(x))/N;
    f= (0:N-1)*(fa/N)-(fa/2);
end

