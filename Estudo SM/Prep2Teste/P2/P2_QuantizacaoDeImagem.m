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
delta = gama / (intensidade_valores_diferentes-1) ;%avançam de 1 em 1
% b = 8
% q = 2^b = 2^8 = 256 niveis
% delta = 256 / q = 256/256 = 1 = passo de quantização
% passos de quantização -> 0:1:255


%Nova imagem com 1 bits por pixel ( 2^1 niveis )
% b = 1
% q = 2^b = 2^1 = 2 niveis
% delta =  256 / q = 256/2 = 128
% passos de quantização -> 0:128:255
delta=128
passosQuant2bits = 0:128:255
I1 = I / delta;
unique(I1)
%erro de quantizaçao  = sinalOriginal - sinalAlterado
erroQuant1bits = double(I) - double(I1);
%Relação Sinal Ruído
S = sum(sum(I.^2))
N = sum(sum(erroQuant1bits.^2))
SNR1bits = 10 * log10(S/N)
%normalizar o erro:
erroQuant1bits = erroQuant1bits / max(abs(erroQuant1bits(:)));
subplot(2,2,1);
imshow(I1); 


%Nova imagem com 2 bits por pixel ( 2^2 niveis )
% b = 2
% q = 2^b = 2^2 = 4 niveis
% delta =  256 / q = 256/4 = 64
% passos de quantização -> 0:64:255
delta=64
passosQuant2bits = 0:64:255
I2 = I / delta;
ind=(I2==4); %4 niveis
I2(ind)=3;   % [ 0 1 2 3 ] -> 4 niveis
I2=I2*delta;
unique(I2)
%erro de quantizaçao  = sinalOriginal - sinalAlterado
erroQuant2bits = double(I) - double(I2);
%Relação Sinal Ruído
S = sum(sum(I.^2))
N = sum(sum(erroQuant2bits.^2))
SNR2bits = 10 * log10(S/N)
%normalizar o erro:
erroQuant2bits = erroQuant2bits / max(abs(erroQuant2bits(:)));
subplot(2,2,2);
imshow(I2); 


%Nova imagem com 3 bits por pixel ( 2^3 niveis )
% b = 3
% q = 2^b = 2^3 = 8 niveis
% delta =  256 / q = 256/8 = 32
% passos de quantização -> 0:32:255
delta=32
passosQuant3bits = 0:32:255
I3 = I / delta;
ind=(I3==8); %8 niveis
I3(ind)=7;   % [ 0 1 2 3 4 5 6 7] -> 8 niveis
I3=I3*delta;
%erro de quantizaçao  = sinalOriginal - sinalAlterado
erroQuant3bits = double(I) - double(I3);
%Relação Sinal Ruído
S = sum(sum(I.^2))
N = sum(sum(erroQuant3bits.^2))
SNR3bits = 10 * log10(S/N)
%normalizar o erro:
erroQuant3bits = erroQuant3bits / max(abs(erroQuant3bits(:)));
subplot(2,2,3);
imshow(I3); 


%Nova imagem com 4 bits por pixel ( 2^4 niveis )
% b = 4
% q = 2^b = 2^4 = 16 niveis
% delta =  256 / q = 256/16 = 16
% passos de quantização -> 0:16:255
delta=16
passosQuant4bits = 0:16:255
I4 = I / delta;
ind=(I4==16); %16 niveis
I4(ind)=15;   % [ 0 ... 15] -> 16 niveis
I4=I4*delta;
%erro de quantizaçao  = sinalOriginal - sinalAlterado
erroQuant4bits = double(I) - double(I4);
%Relação Sinal Ruído
S = sum(sum(I.^2))
N = sum(sum(erroQuant4bits.^2))
SNR4bits = 10 * log10(S/N)
%normalizar o erro:
erroQuant4bits = erroQuant4bits / max(abs(erroQuant4bits(:)));
subplot(2,2,4);
imshow(I4); 

