w = linspace(0,2*pi,200);

f = sin(4*w).*exp(i * w);
g = sin(8*w).*exp(i* w);

subplot(1,2,1)
plot(f,"g")
ylabel("y")
xlabel("x")
grid on
title("slide 43 aula 1")
legend("exercicio 1")

subplot(1,2,2)
plot(g,"r")
ylabel("y")
xlabel("x")
grid on
title("slide 43 aula 1")
legend("exercicio 2")


