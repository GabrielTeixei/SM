%Aula pratica 8
clear all 
clc

fprintf("Exercicio 1\n")
mensagem = 'AABCABABAAABBCABCAAC';

%messaguem = load("Mensagem.mat")
 
Simbolos = Alfabeto(mensagem);  
fprintf(Simbolos+"\n")
fprintf("Exercicio 2\n")
%exercico 2
%Frequencia é a / entre o numeor de elemsenstos que existem pelo numeor
%stotal de elemenstos 

[Simbolos,Frequencia] = Alfabeto1(mensagem);
fprintf("Símbolos: %s\n",Simbolos)
fprintf("Frequência: "); 
fprintf("%d ",Frequencia);
fprintf("\n")


% 3)
% Para a mensagem com 3 símbolos, são precisos 2 bits.

%00 
%01
%10
%11

% 4)
Numerobits = NumeroBits (mensagem);
fprintf("O numero de btis nesseraio para a mensaguem é: %3d \n",+Numerobits )

% 
%[nb] = nb(messaguem) função do professor 

% 5)
%             ABC             A -> 0
%         0----|----1         B -> 10
%         A         BC        C -> 11
%    (P) 0.5        1
%               0---|---1F
%         A     B       C
%    (P) 0.5   0.3     0.2


% 6)
[en] = entropia(mensagem);
fprintf("Entropia: %5.4f bps\n", en)



