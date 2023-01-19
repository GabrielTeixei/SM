load("Guitar02.mat");

fa = 1/Ta;
[X,f] = espetro(x,Ta);

N = length(f);

H = zeros(1,N);
H(f>1299 & f<1301) = 1;
H(f>867 & f<869) = 1;

XX = H.*X';    %aplicação do filtro a magnitude de f
figure(3)
plot(f,abs(XX))
title("Espetro após o filtro")
xlabel("Frequencia (Hz)")
ylabel("Magnitude Filtrada")
grid on 


[xRec,tRec] = reconstroi(XX,f);

t = 500*Ta; %500 pontos


figure(4) % Resolução 
plot(tRec,real(xRec))
title("Sinosoide da frequencia (488.92 Hz)")
xlabel("Tempo(s)")
ylabel("x(t)")
grid on 
xlim([0 t])


sound(real(xRec),fa)
