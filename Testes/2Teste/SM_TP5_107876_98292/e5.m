load("Guitar02.mat")

x_new = x(1:500);

nbit = 4;
N = length(x_new);
t = 0:Ta:N*(Ta)-(Ta);

A = abs(max(x_new)) +abs(min(x_new));
delta = A/(2^nbit);
[indx, quantz] = quantiz(x_new,min(x_new):delta:max(x_new),min(x_new)-delta/2:delta:max(x_new)+delta/2);

figure(1)
title("Sinal Quantizado")
plot(t,x_new, "b", t,quantz);
legend("x_new","Quantização do Sinal");
xlabel("Tempo (s)");
ylabel("Sinal");
grid on 

[recont, reconx] = ReconstroiSinal(quantz,Ta);
figure(2)
title("Sinal Reconstruido")
plot(t,x_new,"g", reconx, recont);
legend("x_New", "Reconstruição do Sinal Quantizado");
xlabel("Tempo (s)");
ylabel("Sinal")
grid on 

