function [X,f] = Spectrum(x, Ta)
    %aponts aula
    N = length(x);
    fa = 1/Ta;
    df = 1/(N*Ta);  % == fa/N   =>   df2 = fa/N;
    %

    % PLOT De:  -fa/2 ---- fa/2     tp
    f = (0 : (N-1))*df - fa/2;    %???? idk how it works
    
    %X2 = fft(x)/N;
    %X2 = fftshift(X2);
        %works the same

    %fft -> freqs positiva
    %fftshift -> freqs na parte neg
    
    X = fftshift(fft(x)) / N;       %aulaTP + bruna   
    %X é o vetor dos Ck
    
    stem(f,abs(X),'.');
    xlabel("Frequencia(Hz)");
    ylabel("DFT(Magnitude)");
  
end