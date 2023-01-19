%%exercicio aula 3 exer1 

%%a) 𝑥(𝑡) = 2 sin(4𝜋𝑡)

T = 0:0.001:1;
x = (4*pi*T);

ax = 2.*sin(x);
potencia(ax,1/5,10);

figure(1)
plot(x,ax,LineWidth=2)

legend('sen(4*pi*T)')
xlabel('xx')
ylabel('yy')

%periodo é o inverso da frequencia 
%% b) 𝑦(𝑡) = sin(10𝜋𝑡 + 𝜋/2)

 x = (10*pi*T + pi/2);

bx = sin(x);
figure(2)
plot(x,bx,LineWidth=2)

legend('𝑦(𝑡) = sin(10𝜋𝑡 + 𝜋/2)')
xlabel('xx')
ylabel('yy')


%% c) 𝑝(𝑡) = sin(20𝜋𝑡 + 70𝜋/180) + sin(20𝜋𝑡 + 200𝜋/180)

 x1 = (20*pi*T + 70*pi/180);
 x2 = (20*pi*T+ 200*pi/180);

cx = sin(x1)+sin(x2);
figure(3)
plot(x,cx)

legend('𝑝(𝑡) = sin(20𝜋𝑡 + 70𝜋/180) + sin(20𝜋𝑡 + 200𝜋/180)')
xlabel('xx')
ylabel('yy')

%% d) 𝑧(𝑡) = sin(6𝜋𝑡) + sin(8𝜋𝑡)


 x1 = (6*pi*T);
 x2 = (20*pi*T +200*pi/180);

dx = sin(x1)+sin(x2);
figure(4)
plot(x,dx)

legend(' 𝑧(𝑡) = sin(6𝜋𝑡) + sin(8𝜋𝑡)')
xlabel('xx')
ylabel('yy')

%% e) 𝑤(𝑡) = sin(6𝜋𝑡) + sin(8𝜋𝑡 + 0.1)

 x1 = (6*pi*T);
 x2 = (8*pi*T +0.1);

ex = sin(x1)+sin(x2);
figure(5)
plot(x,ex)

legend('(𝑡) = sin(6𝜋𝑡) + sin(8𝜋𝑡 + 0.1)')
xlabel('xx')
ylabel('yy')


%% f) 𝑞(𝑡) = sin(6𝜋𝑡) + sin(7𝜋𝑡) + sin(8𝜋𝑡)
figure(6)
x1 = (6*pi*T);
x2 = (7*pi*T);
x3 = (8*pi*T);

fx = sin(x1)+sin(x2)+sin(x3);

plot(x,fx)

legend('𝑞(𝑡) = sin(6𝜋𝑡) + sin(7𝜋𝑡) + sin(8𝜋𝑡)')
xlabel('xx')
ylabel('yy')    



