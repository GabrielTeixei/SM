clc
clear
%Exemplo
s = [ 1 1 1 2 2 2 3 1 1 5 5 5 5 5 ]
%rle =  [ 1 3 2 3 3 1 1 2 5 5 ]

% diff calcula as diferenças 2 a 2
d = diff(s)
d = diff([s(1)+1 s]) 
iox = (d~=0) %->[ 1 4 7 8 10 15]

%%outra forma
other = diff(s)
otherIox = (other ~= 0);
iox = [1 otherIox]