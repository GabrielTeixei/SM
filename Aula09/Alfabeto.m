function [Simbolos] = Alfabeto (texto)
      N = length(texto);
      n = 1;
      Simbolos(n) = texto(1);
      
      for k = 2 : N
        if sum(Simbolos == texto(k)) == 0
          n = n+1;
          Simbolos(n) = texto(k);
          
        end
      end
end