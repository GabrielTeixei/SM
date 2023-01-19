%%folha 2
%1 a)

T = 0:0.01:5;
x = (4*pi*T);

fx = 2.*sin(x);

figure(1)
plot(x,fx,LineWidth=2)

legend('sen(4*pi*T)')
xlabel('xx')
ylabel('yy')

%1 b)
T = 0:0.01:5;
y = (10*pi*T);

fy = cos(y);

figure(2)
plot(y,fy,LineWidth=2)

legend('cos(10*pi*T)')
xlabel('xx')
ylabel('yy')


%1 c)
% 𝑧(𝑡) = 𝑥(𝑡)𝑦(𝑡)

z = fx.*fy;
figure(3)
plot(z)

%1 d)𝑤(𝑡) = 3 sin(𝜋𝑡) + 2 sin(6𝜋𝑡) , 𝑡 ∈ [0; 10]

t = 0:0.01:10;
w = pi*t;

fw = 3.*sin(w)+2.+sin(6*w);

figure(4)
plot(w,fw)
legend('3 sin(𝜋𝑡) + 2 sin(6𝜋𝑡)')
xlabel('xx')
ylabel('yy')


%1 e) q(t1,t2)= 2*sin(2*pi(2*t1+t2))

figure(5)
t = 0.01;
x1 = 0:t:5;
x2 = 0:t:5;


N = length(t);
[x1,x2] = meshgrid(x1,x2);


for k = 1 : N
    r = 2*sin(2*pi*(2.*x1+x2));

    mesh(x1,x2,r);
    view(2);
    drawnow();

end 



