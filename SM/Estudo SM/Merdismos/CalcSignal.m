%recebe vetor de Cks e faz o somatório fixe e devolve o sinal, parecido ao
%Reconstroi
function [x,t] = CalcSignal(ck,f0)
   N = length(ck);
   ck = ifftshift(ck);
   x = ifft(ck)*N;
 
   fa = (f0(2)-f0(1))*N;
   Ta = 1/fa;   
   t = (0:N-1)*Ta;
end

%% tentativa1

function [x, t] = CalcSignal1(Ck, f0) %PROB NÃO CERTO MAS MELHOR QUE NADA

    N = length(Ck);
    fa = 2*f0;
    Ta = 1/fa;
    T0 = N * Ta;
    t = 0:Ta:T0-Ta;

    x = zeros(N,1);

    for i=1:N %expressão abaixo tinha -i*
        x(i) = Ck(i)*exp(-1j*2*pi*f0*t(i));
    end
   
    plot(t,x);
    xlabel("Tempo (seg)");
    ylabel("Sinal x(t)");

end 

%% outra tentativa2

%no idea how this works, mas deve ser fixe 
 

function [x,t] = CalcSignal2(Ck, fo)
    fa = 2*fo;
    T0 = 1/fo;
    Ta = 1/fa;
    N = 2;
    K = length(Ck);
    t = 0:Ta:N*T0;
    x = zeros(1, length(t));
    for i=1:length(t)
        for k=1:K
            x(i) = x(i) + Ck(k)*exp(1j*2*pi*(k-(K/2)*fo*t(i))); 
        end
    end
    plot(t,x);
    xlabel("Tempo (seg)");
    ylabel("Sinal x(t)");
end



