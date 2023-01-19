%devolve o gráfico do sinal com maior energia dum sinal composto
 
%Rafael
function [c, t] = MainComponent(x, Ta)
    N = length(x);
    t = 0:Ta:(N-1)*Ta;
    
    X = fftshift(fft(x)/N); %funçao espetro

    XSorted = sort(X, 'descend');
    X = X == XSorted(1) | X == XSorted(2); %%procura pela frequencia mais alta
    XFiltered = X * XSorted(1);

    c = ifft(ifftshift(XFiltered) * N); %rescontroi
end

%% Butuc
%same shit que o primeiro, mas mais bonito
function c = MainComponent2(x,Ta)
    N = length(x);
    fa = 1/Ta;
    k = 1:N;
    f = (k-1)*fa/N;
    f = ifftshift(f);
    f = f-f(1);
    f = fftshift(f);
    l = 0;
    % Spectrum
    X = fft(x)/N;
    X = fftshift(X);
    
    magnitude = round(max(abs(X)), 4);
    for i=1:length(X)
        if(round(max(abs(X(i))), 4) == magnitude)
            l = abs(f(i));
            break
        end
    end
    c = magnitude*sin(2*pi*l*t);
end
%% Bruna
function c = MainComponent1(x, Ta)
    N = length(x);
    espetrox = fftshift(fft(x))/N;
    
    fa = 1/Ta;
    delta = 1/(N*Ta);
    f = [0 : (N-1)]'*delta-fa/2;
    
    figure(2);
    subplot(2,1,1)
    plot(f, abs(espetrox));
    
    max = 0;
    imaior = 1;
    imaior2 = 1;
    espetroy = zeros(N, 1);
    for i = 1 : N
       if (max < abs(espetrox(i))) 
          max = abs(espetrox(i));
          imaior = i;
       end
       if (max <=abs(espetrox(i)))
          imaior2 = i;
       end
    end
    espetroy(imaior) = max;
    espetroy(imaior2) = max;
    
    figure(2);
    subplot(2,1,2)
    plot(f, abs(espetroy));
    
    c = ifft(ifftshift(abs(espetroy)))*N;
end
