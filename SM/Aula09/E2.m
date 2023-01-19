clear
close all
clc

% load("Mensagem.mat")
Mensagem = 'AABCABABAAABBCABCAAC';
fprintf("Mensagem: %s\n", Mensagem)

%% 1.
 Simbolos = Alfabeto(Mensagem);
 fprintf("Símbolos: %s\n",Simbolos)

%% 2.
[Simbolos,Frequencia] = Alfabeto1(Mensagem);
fprintf("Símbolos: %s\n",Simbolos)
fprintf("Frequência: "); 
fprintf("%d ",Frequencia);
fprintf("\n")


%% 3.
% Para a mensagem com 3 símbolos, são precisos 2 bits.

%% 4.
NumBits = NumeroBits(Mensagem);
fprintf("Número de bits: %d\n", NumBits)
% Não é ambíguo, mas também não é instantâneo.

%% 5.
%             ABC             A -> 0
%         0----|----1         B -> 10
%         A         BC        C -> 11
%    (P) 0.5        1
%               0---|---1
%         A     B       C
%    (P) 0.5   0.3     0.2

%% 6.
H = entropia(Mensagem)
fprintf("Entropia: %5.4f bps\n", H)