%% Guião 09
%I. Codificação Eficiente de Informação

clear all
clc

%DADOS
%    A   B C D  E
f = [14 64 5 10 7]';


% 2)
CompMesg = 1000;
nBits = [2 1 4 3 4]';
[NumBits,NumBPS] = GeraMensagem(f,CompMesg,nBits);
fprintf('NumBits = %d\n', NumBits) %numero total de bist
fprintf('NumBPS = %f\n', NumBPS)

