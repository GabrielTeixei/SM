function [ak, bk] = coeficientesA_B(x,K,T0,Ta)
  f0=1/T0; %frequência
  N = length(x); %número de merdas do mesmo comprimento que a função
  t = (0:N-1)*Ta; %tempo com N-1 para não bugar, ver apontamentos, múltiplo de Ta também para não bugar
  ak = zeros(1,K); %ak 
  bk = zeros(1,K); %e bk inicalizados
  for k=1:K
    ak(k) = 2*sum(x.*cos(k*2*pi*f0*t)*Ta)/(N*Ta); %literalmente a fórmula, para ver em separado e mais simples, ver em baixo a função do stor
    bk(k) = 2*sum(x.*sin(k*2*pi*f0*t)*Ta)/(N*Ta);
  end
end
