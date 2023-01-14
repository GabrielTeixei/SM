%
% Exercício Adicional
%

%s vai ficar com todas as palavras
fid = fopen("Maias.txt");
s = fread(fid);
fclose(fid);

%simbolos do ficheiro
simbolos  = unique(s);

%calcular as probabilidades de cada simbolo
p = zeros(1,length(simbolos));
for i = 1:length(simbolos)
  p(1,i) = sum(s==simbolos(i)) / length(s);
endfor


H = -p*log2(p)' % entropia dos Maias

length(s)*H/8; % 7.6e5 = 760 kbytes
               % ZIP = 511 kbytes
               % RAR = 445 kbytes