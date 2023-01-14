function [X, f] = Espetro(x,Ta)
    N = length(x);
    X = fftshift(fft(x))/N;

    Fa = 1/Ta;
    f = (0:N-1)*Fa/N - Fa/2; % Fa/N é o df
    % (0:N-1)*Fa/N é o espetro de freq, ao fazer -Fa/2 estamos a dar shift
    % para a esquerda
end