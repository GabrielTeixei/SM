function [x,t] = Reconstroi(X,f)
   N = length(X);
   X = ifftshift(X);
   x = ifft(X)*N;
 
   fa = (f(2)-f(1))*N;
   Ta = 1/fa;   
   t = (0:N-1)*Ta;
end