x = linspace(0,2*pi,100);
fx = sin(x);

plot(x,Taylor(2,x),LineWidth=2)

legend('N = 2')
hold on

plot(x,Taylor(10,x),LineWidth=2)


plot(x,fx,LineWidth=2)
legend('N = 2','N = 10','f(x) = sin(x)')
xlabel('x')
ylabel('y')
hold off