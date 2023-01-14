function [Simbolos, frequencia] = Alfabeto1 (texto)
      N = length(texto);
      n = 1;
      Simbolos(n) = texto(1);
      frequencia(n) = sum(texto == Simbolos(n))/N*100;
      
      for k = 2 : N
        if sum(Simbolos == texto(k)) == 0
          n = n+1;
          Simbolos(n) = texto(k);
          frequencia(n) = sum(texto == Simbolos(n))/N*100;
        end
      end
end