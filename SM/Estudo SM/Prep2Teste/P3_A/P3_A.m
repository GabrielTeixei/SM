clear;clc

load datatrab
simbolos

%%Saber caracteristicas de text:
whos text
%%Saber caracteristicas de simbolos:
whos simbolos
simbolos
%% Tanto os simbolos como o text são do tipo char
%% A linha sum(text==simbolos(k)) conta o numero de ! do ficheiro 
%% k pode ir até 8, uma vez que há 8 simbolos

%% Nr total de simbolos = 262143
%% Nr de simbolos diferentes = 8

%%Pergunta 2
probSimbolos = zeros(1,length(simbolos));
for i = 1:length(simbolos)
  probSimbolos(1,i) = sum(text==simbolos(i)) / length(text);
endfor
probSimbolos

%%Pergunta 3

%%a)

%CODIGO A:Como os códigos estão todos nas folhas da árvore binária, entao o código é nao ambiguo e instaneo
%[010 |101 |100 |011 |110]
%  #  | '  | "  | &  | !

%CODIGO B:Como os códigos estão todos nas folhas da árvore binária, entao o código é nao ambiguo e instaneo
%[0 | 10 | 10 |110 | 0 | 0 | 11110]
% $ | %  |  % | #  | $ | $ |   "

%%b) No caderno

%%c + d + e)
totalBitsA = length(text) * 3
totalBitsB = probSimbolos*length(text) * [7 5 3 1 2 4 6 8]'
%%Como totalBitsB < totalBitsA, então, o código B é mais eficiente
mediaBitsSimboloA = totalBitsA / length(text)
mediaBitsSimboloB = totalBitsB / length(text)

%%Pergunta 4
H = -sum ( probSimbolos * log2(probSimbolos'))

%%Pergunta 5 no caderno