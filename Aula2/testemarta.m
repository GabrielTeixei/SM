


T = 0:0.01:5;
x1 = (4*pi*T+pi/2);
x2 = (8*pi*T-pi/5);

fx = 10+8.*sin(x1)+5.*sin(x2);

figure(1)
plot(T,fx)

legend('sen(4*pi*T)')
xlabel('xx')
ylabel('yy')
