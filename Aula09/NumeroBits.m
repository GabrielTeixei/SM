function Numerobits = NumeroBits (texto)


  N = length(texto);

  [Simbolos,Frequencia] = Alfabeto1(texto);

  [freq,i] = sort(Frequencia,"descend");

  NewSymb = Simbolos(i);
  
  Numerobits = 0;
  
  for i = 1 : length(NewSymb)
    Numerobits = Numerobits+ (i * freq(i)*N/100);
  end
  
  

  
end