fase = rand(1,3)*2*pi-pi;

T = 0:0.01:2;

x = sin(2*pi*10*T+fase(1))+sin(2*pi*20*T+fase(2))+sin(2*pi*30*T+fase(3));
plot(T,x)
xlim([0 1])

% este belo e magfinicio grafico serve para mostrar que nao sei o que faz
% mas é vida e ela sempre cuntiijaoijoiajd