clear;clc
s = [ 1 1 1 2 2 2 3 1 1 5 5 5 5 5 ] 

load datatrab

%s=double(text);    
d = diff([s(1) + 1 s s(end)+1])  %% dá valores de quando encontramos uma sequencia nova! 1ª -> 1 2ª -> 2 3ª -> 3 4ª -> 31 5ª -> 5
iox = find(d~=0) %%posições do array s onde estão diferentes sequencias! primeiro 1 -> posicao 1; primeiro 2 -> posicao 4 ...
c=diff(iox) %% diferença entre as posições consecutivas de onde estão as diferente sequencias [ 3 (=4-1), 3 (=7-4) , ...]
RLE= zeros(1,2*length(c))
RLE(1:2:end) = s(iox(1:end-1))
RLE(2:2:end) = c
hist(c,unique(c)) %%RLE nao funciona bem porque existem poucas repetições da mesma sequencia 
                  %%o que se pode observar pela barra de 1 repetição ser a maior!