%Retorna o y (N x 1) com as amostras do sinal y(t) cujo espetro em magnitude
%é igual ao do sinal x(t) (cujas amostras são passadas à função pelo vetor
%x (N x 1) mas a fase de todas as componentes de DFT de y(t) é nula.
% A função recebe também o Ta.
function y = NullPhaseSignal (x, Ta)
    N = length(x);
    T = Ta * N;
    t = 0:Ta:T-Ta;
    fa = 1/Ta;
    
    %funçao espetro
    espetrox=fftshift(fft(x)/N);
    f= [-fa/2: fa/N : fa/2 - fa/N];
    
    Y=length(x);
    
    %retira as fases
    espetroy=abs(espetrox);
    
    %funçao reconstroi
    y=ifft(ifftshift(espetroy))*N;

    plot(t,y)
    figure(8)
    stem(f,espetroy)
end
