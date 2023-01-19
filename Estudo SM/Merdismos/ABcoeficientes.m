%devolve coeficientes ak e bk, recebe o sinal, número de harmónicas,
%período fundamental e Ta

function [a,b] = ABcoeficientes(x,K,T0,Ta) %função do stor, meh, nem sei se funciona
    f0=1/T0;
    N=length(x);
    t = (0:Ta:(N-1)*Ta);
    a = zeros(1,K);
    b = zeros(1,K);
    for k=1:K
        cosk= cos(k*2*pi*f0*t);
        sink= sin(k*2*pi*f0*t);
        a(k) = 2*sum(x.*cosk*Ta)/(N*Ta);
        b(k) = 2*sum(x.*sink*Ta)/(N*Ta);
    end
end
