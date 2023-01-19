function p = potencia (x,Ta,T)
  N = T/Ta;
  soma = 0; 
  for n=1:N
    soma =soma+ (x(n))^2;
  end 
  p = Ta/T * soma;  
 
 %OR:
 %N = length(x); 
 %potencia = (1/N) * x' * x;
 
 %OR:
 %potencia = (Ta/T) * x' * x;  %Assumindo que x contem apenas um periodo do sinal
  
end
