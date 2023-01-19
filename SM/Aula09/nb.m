
function [nb] = nb(texto)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here


%funcao do prof 

[Simbolos, frequencia] = Alfabeto1 (texto);
[frequencia,i]= sort(frequencia,"descend");
Simbolos = Simbolos(i);

nb = 0;
for n = 1:length(Simbolos)
    nb = nb + sim(texto+Simbolos(n)==Simbolos(i)*n);

end
   nb 

end 