clear;clc
%%ILifting**********
[I , cmap] = imread("liftingbody.png");
rows(I);      % 512 linhas
columns(I);   % 512 colunas
ndims(I);     % 2 dimensoes
numel(cmap);  %0 -> Nao indexada
Tamanho = 512 * 512 / 1024^2
%Tipo = uint8 Preto/Branco

%% Intensidades
intensidade_min = min(I(:)) %valor minimo 0
intensidade_max = max(I(:)) %valor maximo 255
intensidade_valores_diferentes = length(unique(I(:))) %256 valores diferentes -> 2^8 (8 bits = b)
gama = intensidade_max - intensidade_min %vao de 0 a 255
delta = gama / (intensidade_valores_diferentes-1) %avançam de 1 em 1
% b = 8
% q = 2^b = 2^8 = 256 niveis
% delta = 256 / q = 256/256 = 1 = passo de quantização
% passos de quantização -> 0:1:255


%Nova imagem com 7 bits por pixel ( 2^7 niveis )
% b = 7
% q = 2^b = 2^7 = 128 niveis
% delta =  256 / q = 256/128 = 2
% passos de quantização -> 0:2:255
delta=2;
passosQuant2bits = 0:2:255;
I1 = I / delta;
ind=(I1==128); %128 niveis
I1(ind)=127; 
I1=I1*delta;
%erro de quantizaçao  = sinalOriginal - sinalAlterado
erroQuant1bits = double(I) - double(I1);
%Relação Sinal Ruído
S = sum(sum(I.^2))
N = sum(sum(erroQuant1bits.^2))
SNR1bits = 10 * log10(S/N)
%normalizar o erro:
erroQuant1bits = erroQuant1bits / max(abs(erroQuant1bits(:)));
subplot(2,2,1);
imshow(abs(erroQuant1bits)); 
