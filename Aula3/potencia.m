function output = potencia(x,ts,T)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
%potencia
 n = T/ts;
 output = transpose(x)*x(1:n)/n;
end

